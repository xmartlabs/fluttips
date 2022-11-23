import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttips/ui/common/context_extensions.dart';
import 'package:fluttips/ui/section/error_handler/error_handler_cubit.dart';

import 'package:fluttips/ui/section/global_ui/global_ui_cubit.dart';

class SectionRouter extends StatelessWidget {
  const SectionRouter({super.key});

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (BuildContext context) => ErrorHandlerCubit()),
          BlocProvider(create: (context) => GlobalUICubit()),
        ],
        child: BlocListener<ErrorHandlerCubit, ErrorHandlerState>(
          listener: showError,
          child: const AutoRouter(),
        ),
      );

  void showError(BuildContext context, ErrorHandlerState error) {
    error.when(
      init: () => {},
      unknownError: (error, retry) => _showDialog(
        context,
        context.localizations.error_unknown_error_title,
        context.localizations.error_unknown_error_description,
        retry,
      ),
      internetError: (retry) => _showDialog(
        context,
        context.localizations.error_no_internet_connection_error_title,
        context.localizations.error_no_internet_connection_error_description,
        retry,
      ),
      generalError: (title, description, retry) =>
          _showDialog(context, title, description, retry),
    );
  }

  void _showDialog(
    BuildContext context,
    String? title,
    String description,
    VoidCallback? retry,
  ) =>
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(
            title ?? context.localizations.error_unknown_error_title,
          ),
          content: Text(description),
          actions: <Widget>[
            if (retry != null)
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(context.localizations.error_button_retry),
              ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(context.localizations.error_button_ok),
            ),
          ],
        ),
      );
}
