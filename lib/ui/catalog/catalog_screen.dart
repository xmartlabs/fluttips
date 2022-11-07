// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_template/ui/common/app_button.dart';
import 'package:flutter_template/ui/common/app_dialog.dart';
import 'package:flutter_template/ui/common/fab.dart';
import 'package:flutter_template/ui/common/search_bar.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => CatalogScreenState();
}

class CatalogScreenState extends State<CatalogScreen> {
  final controllerSearchBar = TextEditingController();
  final controllerAppButton = TextEditingController();

  @override
  void dispose() {
    controllerSearchBar.dispose();
    controllerAppButton.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            onPressed: () => showDialog(
              context: context,
              builder: (_) => AppDialog(
                title: 'title',
                optionOne: 'option1',
                contentText: 'content',
                actionOne: () => print('Option 1 clicked'),
                actionTwo: () => print('Option 2 clicked'),
              ),
            ),
            child: null,
          ),
          SearchBar(
            controller: controllerSearchBar,
            action: (word) => print('writing'),
          ),
          AppButton(
            text: 'hello',
            action: controllerAppButton.clear,
          ),
          Fab(
            state: const FabState.notSelected(),
            iconNotSelected: Icons.star_border,
            action: () => print('Fab clicked'),
          ),
        ],
      );
}
