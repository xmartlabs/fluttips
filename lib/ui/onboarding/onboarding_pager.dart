import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttips/ui/common/context_extensions.dart';
import 'package:fluttips/ui/theme/app_theme.dart';
import 'package:fluttips/ui/onboarding/onboarding_cubit.dart';
import 'package:fluttips/ui/common/animatedPagerDote.dart';

import 'package:fluttips/core/model/enums/onboarding_enum.dart';

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
                children: Onboarding.values
                    .map(
                      (e) => AnimatedPagerDot(
                        currentPage: state.currentPage,
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
    Key? key,
    required PageController pageController,
  })  : _pageController = pageController,
        super(key: key);

  final PageController _pageController;

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: context.read<OnboardingCubit>().setCurrentPage,
            children: Onboarding.values
                .map(
                  (e) => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        e.imageUrl,
                      ),
                      SizedBox(width: 20.w),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            e.firstText,
                            style:
                                context.theme.textStyles.titleLarge!.copyWith(
                              color: context.theme.colors.surface,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 04),
                          Container(
                            child: Text(
                              e.secondText,
                              style:
                                  context.theme.textStyles.bodyLarge!.copyWith(
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
          ),
        ],
      );
}
