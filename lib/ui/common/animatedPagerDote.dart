import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

const animationShortDuration = Duration(milliseconds: 200);

class AnimatedPagerDot extends StatelessWidget {
  const AnimatedPagerDot({
    required this.isCurrentPage,
    required this.color,
    Key? key,
  }) : super(key: key);

  final bool isCurrentPage;
  final Color color;

  @override
  Widget build(BuildContext context) => AnimatedContainer(
        duration: animationShortDuration,
        height: 10.h,
        width: 10.w,
        margin: const EdgeInsets.only(left: 4, right: 4, bottom: 15, top: 10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isCurrentPage ? color : color.withOpacity(0.5),
        ),
      );
}
