import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttips/ui/common/context_extensions.dart';
import 'package:fluttips/ui/onboarding/onboarding_step.dart';
import 'package:fluttips/ui/theme/app_theme.dart';
import 'package:fluttips/ui/onboarding/onboarding_cubit.dart';
import 'package:fluttips/ui/common/animated_pager_dote.dart';
import 'package:fluttips/ui/common/app_button.dart';

class OnboardingContentScreen extends StatelessWidget {
  const OnboardingContentScreen({
    required this.btnText,
    required this.action,
    super.key,
  });

  final String btnText;
  final VoidCallback action;
  static const indexOnboardingGestures = 3;

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<OnboardingCubit, OnboardingBaseState>(
        builder: (context, state) => Stack(
          alignment: Alignment.bottomCenter,
          children: [
            const _PagerView(),
            buildViewPagerIndicator(context, state),
            state.onboardingStep.index != indexOnboardingGestures
                ? Positioned(
                    top: 30,
                    right: 15,
                    child: AppButton(
                      text: btnText,
                      action: action,
                      backgroundColor: context.theme.colors.background,
                    ),
                  )
                : Positioned(
                    bottom: 15,
                    right: 15,
                    child: AppButton(
                      text: btnText,
                      action: action,
                      backgroundColor: context.theme.colors.background,
                    ),
                  ),
          ],
        ),
      );

  Widget buildViewPagerIndicator(
    BuildContext context,
    OnboardingBaseState state,
  ) =>
      Positioned(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: OnboardingStep.onboardingPages
              .map(
                (pages) => AnimatedPagerDot(
                  isDotSelected: state.onboardingStep.index == pages.index,
                  color: context.theme.colors.surface,
                ),
              )
              .toList(),
        ),
      );
}

class _PagerView extends StatefulWidget {
  const _PagerView({
    Key? key,
  }) : super(key: key);

  @override
  State<_PagerView> createState() => _PagerViewState();
}

class _PagerViewState extends State<_PagerView> {
  @override
  Widget build(BuildContext context) => pageViewContent(context);

  final PageController _pageController = PageController();

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
                      Text(
                        onboardingStep.getSecondaryText(context),
                        style: context.theme.textStyles.bodyLarge!.copyWith(
                          color: context.theme.colors.surface,
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
