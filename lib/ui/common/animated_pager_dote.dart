import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

const animationShortDuration = Duration(milliseconds: 200);

class AnimatedPagerDot extends StatelessWidget {
  const AnimatedPagerDot({
    required this.isDotSelected,
    required this.color,
    Key? key,
  }) : super(key: key);

  final bool isDotSelected;
  final Color color;

  @override
  Widget build(BuildContext context) => AnimatedContainer(
        duration: animationShortDuration,
        height: 10.h,
        width: 10.w,
        margin: EdgeInsets.only(left: 4.w, right: 4.w, bottom: 15.h, top: 10.h),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isDotSelected ? color : color.withOpacity(0.5),
        ),
      );
}
