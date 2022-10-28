import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/ui/common/input_text.dart';
import 'package:flutter_template/ui/extensions/context_extensions.dart';
import 'package:flutter_template/ui/theme/app_theme.dart';

class Search extends StatelessWidget {
  final TextEditingController controller;

  const Search({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        alignment: Alignment.centerRight,
        width: 700,
        height: 100.h,
        child: Container(
          child: InputText(
            firstIcon: Icons.search,
            secondIcon: Icons.highlight_off,
            controller: controller,
            textHint: 'Search',
            actionSecondIcon: controller.clear,
            width: 764,
            height: 56,
          ),
        ),
      );
}
