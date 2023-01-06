import 'package:bloc/bloc.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:fluttips/ui/resources.dart';
import 'package:fluttips/ui/section/error_handler/error_handler_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fluttips/core/di/di_provider.dart';
import 'package:fluttips/ui/app_router.dart';
import 'package:fluttips/core/common/config.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:fluttips/gen/assets.gen.dart';

part 'about_cubit.freezed.dart';

part 'about_state.dart';

class AboutCubit extends Cubit<AboutBaseState> {
  final AppRouter _router = DiProvider.get();

  // ignore: unused_field
  final GeneralErrorHandler _errorHandler;

  AboutCubit(this._errorHandler) : super(const AboutBaseState.state());

  void onTermsAndConditionsButtonPressed() => _router.navigate(
        WebViewRoute(path: Assets.policyAndTerms.termsAndConditions),
      );

  void onPrivacyPolicyButtonPressed() => _router.navigate(
        WebViewRoute(path: Assets.policyAndTerms.privacyPolicy),
      );

  Future<void> sendEmail() async {
    final PackageInfo packageInfo = await PackageInfo.fromPlatform();
    final Email email = Email(
      subject:
          Resources.localizations.feedback_email_subject + packageInfo.version,
      recipients: [Config.appEmail],
      isHTML: false,
    );

    await FlutterEmailSender.send(email);
  }
}
