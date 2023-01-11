import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter_archive/flutter_archive.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:fluttips/core/source/database.dart';
import 'package:fluttips/ui/resources.dart';
import 'package:fluttips/ui/section/error_handler/error_handler_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fluttips/core/di/di_provider.dart';
import 'package:fluttips/ui/app_router.dart';
import 'package:fluttips/core/common/config.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:fluttips/gen/assets.gen.dart';
import 'package:path_provider/path_provider.dart';

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

    final a = await DiProvider.get<AppDatabase>().getDatabasesPath();
    final dataDir = Directory(a);
    var tempDir = await getTemporaryDirectory();
    final zipPath = "${tempDir.path}/test.zip";
    final zipFile = File(zipPath);

    try {
      await ZipFile.createFromDirectory(
        sourceDir: dataDir,
        zipFile: zipFile,
        recurseSubDirs: true,
      );
    } catch (e) {
      print(e);
    }
    final Email email = Email(
      subject:
      Resources.localizations.feedback_email_subject(packageInfo.version),
      attachmentPaths: [zipPath],
      recipients: ['mirland@xmartlabs.com'],
      isHTML: false,
    );
    await FlutterEmailSender.send(email);
  }
}
