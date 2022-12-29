import 'package:bloc/bloc.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';

import 'package:fluttips/ui/section/error_handler/error_handler_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:fluttips/core/di/di_provider.dart';
import 'package:fluttips/ui/app_router.dart';

part 'about_cubit.freezed.dart';

part 'about_state.dart';

class AboutCubit extends Cubit<AboutBaseState> {
  // ignore: unused_field
  final GeneralErrorHandler _errorHandler;
  final AppRouter _router = DiProvider.get();

  AboutCubit(this._errorHandler) : super(const AboutBaseState.state());

  void navigateToAbout() => _router.navigate(const AboutScreenRoute());

  void navigateToWebView(bool isPrivacyPolicy) =>
      _router.navigate(AboutWebViewRoute(isPrivacyPolicy: isPrivacyPolicy));

  Future<void> sendEmail() async {
    final Email email = Email(
      subject: 'Suggestion',
      recipients: ['fluttips@xmartlabs.com'],
      isHTML: false,
    );

    await FlutterEmailSender.send(email);
  }
}
