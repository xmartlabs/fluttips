import 'package:flutter/material.dart';
import 'package:flutter_template/ui/common/input_text.dart';

class Search extends StatelessWidget {
  final TextEditingController controller;

  const Search({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        alignment: Alignment.centerRight,
        child: Container(
          child: InputText(
            leadingIcon: Icons.search,
            trailingIcon: Icons.highlight_off,
            controller: controller,
            textHint: 'Search',
            // string
            actionSecondIcon: controller.clear,
          ),
        ),
      );
}
