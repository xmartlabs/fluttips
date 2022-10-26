import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/ui/section/error_handler/error_handler_cubit.dart';

import 'package:flutter_template/ui/home/home_cubit.dart';
import 'package:flutter_template/ui/tips/tips_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(context.read<ErrorHandlerCubit>()),
      child: _HomeContentScreen(),
    );
  }
}

class _HomeContentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeBaseState>(builder: (context, state) {
      return SafeArea(
        child: Scaffold(
          body: TipsScreen(),
        ),
      );
    });
  }
}
