import 'package:flutter/material.dart';
import 'package:flutter_template/ui/common/app_button.dart';
import 'package:flutter_template/ui/common/app_dialog.dart';
import 'package:flutter_template/ui/common/fab.dart';
import 'package:flutter_template/ui/common/search.dart';

class CatalogScreen extends StatelessWidget {
  final TextEditingController controller;

  const CatalogScreen({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            onPressed: () => showDialog(
              context: context,
              builder: (_) => AppDialog(
                title: 'title',
                negativeOption: 'negative',
                positiveOption: 'positive',
                contentText: 'context',
                negativeAction: controller.clear,
                positiveAction: controller.clear,
              ),
            ),
            child: null,
          ),
          Search(
            controller: controller,
          ),
          Container(
            child: AppButton(
              text: 'hello',
              action: controller.clear,
            ),
          ),
          Fab(
            state: FabState.notSelected(),
            iconNotSelected: Icons.star_border,
          ),
        ],
      );
}
