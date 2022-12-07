import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttips/ui/common/context_extensions.dart';
import 'package:fluttips/ui/onboarding/onboarding_step.dart';
import 'package:fluttips/ui/theme/app_theme.dart';
import 'package:fluttips/ui/onboarding/onboarding_cubit.dart';
import 'package:fluttips/ui/common/animatedPagerDote.dart';

class OnboardingContentScreen extends StatefulWidget {
  const OnboardingContentScreen();

  @override
  State<OnboardingContentScreen> createState() =>
      _OnboardingContentScreenState();
}

class _OnboardingContentScreenState extends State<OnboardingContentScreen> {
  _OnboardingContentScreenState();

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<OnboardingCubit, OnboardingBaseState>(
        builder: (context, state) => Stack(
          alignment: Alignment.bottomCenter,
          children: [
            _PagerView(pageController: _pageController),
            Positioned(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: OnboardingStep.onboardingPages
                    .map(
                      (e) => AnimatedPagerDot(
                        currentPage: state.onboardingStep.index,
                        myIndex: e.index,
                        color: context.theme.colors.surface,
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      );
}

class _PagerView extends StatelessWidget {
  const _PagerView({
    required PageController pageController,
    Key? key,
  })  : _pageController = pageController,
        super(key: key);

  final PageController _pageController;

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          pageViewContent(context),
        ],
      );

  PageView pageViewContent(BuildContext context) => PageView(
        controller: _pageController,
        onPageChanged: (index) =>
            context.read<OnboardingCubit>().setCurrentPage(index),
        children: OnboardingStep.onboardingPages
            .map(
              (onboardingStep) => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  onboardingStep.getIcon(context)!.image(),
                  SizedBox(width: 20.w),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        onboardingStep.getPrimaryText(context),
                        style: context.theme.textStyles.titleLarge!.copyWith(
                          color: context.theme.colors.surface,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Container(
                        child: Text(
                          onboardingStep.getSecondaryText(context),
                          style: context.theme.textStyles.bodyLarge!.copyWith(
                            color: context.theme.colors.surface,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
            .toList(),
      );
}
