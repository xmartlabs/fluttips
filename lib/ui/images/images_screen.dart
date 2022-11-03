import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/ui/section/error_handler/error_handler_cubit.dart';
import 'package:flutter_template/ui/images/images_cubit.dart';
import 'package:flutter_template/ui/tips/tips_screen.dart';

class ImagesScreen extends StatelessWidget {
  const ImagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ImagesCubit(context.read<ErrorHandlerCubit>()),
      child: _HomeContentScreen(),
    );
  }
}

class _HomeContentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TipsScreen();
  }
}
