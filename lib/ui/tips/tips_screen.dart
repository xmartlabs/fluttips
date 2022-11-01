import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/ui/extensions/context_extensions.dart';
import 'package:flutter_template/ui/section/error_handler/error_handler_cubit.dart';
import 'package:flutter_template/ui/theme/app_theme.dart';
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
  final TextEditingController controller = TextEditingController();
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TipCubit, TipsBaseState>(
      builder: (context, state) {
        return Container(
          color: context.theme.colors.background,
          child: PageView.builder(
            controller: pageController,
            allowImplicitScrolling: true,
            scrollDirection: Axis.vertical,
            itemCount: state.tips.length,
            itemBuilder: (BuildContext context, int index) =>
                Image.network(state.tips[index].imageUrl),
          ),
        );
      },
    );
  }
}
