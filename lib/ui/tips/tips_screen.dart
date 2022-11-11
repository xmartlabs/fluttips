import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/ui/section/error_handler/error_handler_cubit.dart';
import 'package:flutter_template/ui/tips/tips_cubit.dart';
import 'package:flutter_template/ui/common/custom_scaffold_fab.dart';
import 'package:flutter_template/ui/common/fab.dart';

class TipsScreen extends StatelessWidget {
  const TipsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => TipCubit(context.read<ErrorHandlerCubit>()),
        child: _TipContentScreen(),
      );
}

class _TipContentScreen extends StatefulWidget {
  @override
  State<_TipContentScreen> createState() => _TipContentScreenState();
}

class _TipContentScreenState extends State<_TipContentScreen> {
  late final TextEditingController _controller = TextEditingController();
  late final PageController _pageController = PageController();

  @override
  void dispose() {
    _controller.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<TipCubit>();
    return BlocBuilder<TipCubit, TipsBaseState>(
      builder: (context, state) => MainScaffoldWithFab(
        iconNotSelected: Icons.star_border,
        state: state.tips.isNotEmpty && state.tips[state.currentPage].favourite
            ? const FabState.selected()
            : const FabState.notSelected(),
        action: () => cubit.changeFavouriteButton(
          state.tips,
          state.currentPage,
        ),
        iconSelected: Icons.star,
        child: PageView.builder(
          controller: _pageController,
          allowImplicitScrolling: true,
          scrollDirection: Axis.vertical,
          itemCount: state.tips.length,
          onPageChanged: (index) => cubit.setCurrentPage(index),
          itemBuilder: (BuildContext context, int index) =>
              Image.network(state.tips[index].imageUrl),
        ),
      ),
    );
  }
}
