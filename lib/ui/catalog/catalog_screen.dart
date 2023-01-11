// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:fluttips/ui/common/app_secondary_button.dart';
import 'package:fluttips/ui/common/app_dialog.dart';
import 'package:fluttips/ui/common/context_extensions.dart';
import 'package:fluttips/ui/common/fab.dart';
import 'package:fluttips/ui/common/search_bar.dart';
import 'package:fluttips/ui/theme/app_theme.dart';

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
          AppSecondaryButton(
            text: 'hello',
            action: controllerAppButton.clear,
          ),
          Fab(
            state: const FabState.notSelected(),
            iconNotSelected: Icons.star_border,
            border: const CircleBorder(),
            action: () => print('Fab clicked'),
          ),
        ],
      );
}
