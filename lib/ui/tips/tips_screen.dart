import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/ui/common/app_button.dart';
import 'package:flutter_template/ui/common/fab.dart';
import 'package:flutter_template/ui/section/error_handler/error_handler_cubit.dart';
import 'package:flutter_template/ui/tips/tips_cubit.dart';

import 'package:flutter_template/ui/common/search.dart';

import '../common/app_dialog.dart';

class TipsScreen extends StatelessWidget {
  const TipsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TipCubit(context.read<ErrorHandlerCubit>()),
      child: _TipContentScreen(),
    );
  }
}

class _TipContentScreen extends StatelessWidget {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TipCubit, TipsBaseState>(
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RaisedButton(
              onPressed: () => showDialog(
                context: context,
                builder: (_) => AppDialog(
                  title: 'titulo',
                  option1: 'option1',
                  option2: 'option2',
                  contentText: 'contexto',
                  actionOption1: controller.clear,
                  actionOption2: controller.clear,
                ),
              ),
            ),
            Search(
              controller: controller,
            ),
            Container(
              child: AppButton(text: 'hola'),
            ),
            Fab(state: FabState.selected(),),
          ],
        );
        /*Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Search(
              controller: controller,
            ),
            Container(
              child: AppButton(text: 'hola'),
            ),
            AppDialog(option1: 'yes', title: 'Dialog with hero icon', contentText: 'text here', option2: 'no',),
          ],
        ); */ /*ListView.builder(
            shrinkWrap: true,
            itemCount: 11,
            itemBuilder: (BuildContext context, int index) =>
                Image.network(state.tips[index].imageUrl),
          ),
        );*/
      },
    );
  }
}
