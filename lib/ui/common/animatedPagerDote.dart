import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

const animationShortDuration = Duration(milliseconds: 200);

class AnimatedPagerDot extends StatelessWidget {
  const AnimatedPagerDot({
    Key? key,
    required this.currentPage,
    required this.myIndex,
    required this.color,
  }) : super(key: key);

  final int currentPage;
  final int myIndex;
  final Color color;

  @override
  Widget build(BuildContext context) => AnimatedContainer(
        duration: animationShortDuration,
        height: 10.h,
        width: 10.w,
        margin: const EdgeInsets.only(left: 4, right: 4, bottom: 15, top: 10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: myIndex == currentPage ? color : color.withOpacity(0.5),
        ),
      );
}
