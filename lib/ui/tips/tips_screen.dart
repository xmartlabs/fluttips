import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/ui/extensions/context_extensions.dart';
import 'package:flutter_template/ui/section/error_handler/error_handler_cubit.dart';
import 'package:flutter_template/ui/tips/tips_cubit.dart';

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
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TipCubit, TipsBaseState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(context.localizations.sign_in),
          ),
          body: ListView.builder(
            shrinkWrap: true,
            itemCount: 11,
            itemBuilder: (BuildContext context, int index) =>
                Image.network(state.tips[index].imageUrl),
          ),
        );
      },
    );
  }
}
