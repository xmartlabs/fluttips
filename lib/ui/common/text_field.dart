import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/ui/extensions/context_extensions.dart';
import 'package:flutter_template/ui/theme/app_theme.dart';
import 'package:flutter_template/ui/theme/text_styles.dart';

class TextFieldScreen extends StatelessWidget {
  final TextEditingController controller;

  const TextFieldScreen({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
    children: [
      SizedBox(
        width: 0.5.sw,
        height: 0.3.sh,
        child: TextField(
          onChanged: (_) {},
          controller: controller,
          decoration: InputDecoration(
            icon: Icon(Icons.search),
            hintText: 'Search',
            labelStyle: context.theme.textStyles.bodyLarge
                ?.copyWith(color: Colors.black),
            hintStyle: context.theme.textStyles.bodyLarge
                ?.copyWith(color: Colors.black),
          ),
          style: context.theme.textStyles.bodyLarge
              ?.copyWith(color: Colors.black),
        ),
      ),
      IconButton(onPressed: () {}, icon: Icon(Icons.cancel)),
    ],
  );
}
