import 'package:flutter/material.dart';
import 'package:flutter_template/ui/common/input_text.dart';
import 'package:flutter_template/ui/common/context_extensions.dart';

class SearchBar extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) action;

  const SearchBar({
    required this.controller,
    required this.action,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        alignment: Alignment.centerRight,
        child: InputText(
          leadingIcon: Icons.search,
          trailingIcon: Icons.highlight_off,
          controller: controller,
          textHint: context.localizations.search,
          actionSecondIcon: controller.clear,
          onChanged: action,
        ),
      );
}
