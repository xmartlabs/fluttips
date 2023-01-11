import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttips/ui/common/app_button.dart';
import 'package:fluttips/ui/common/context_extensions.dart';
import 'package:fluttips/ui/theme/app_theme.dart';
import 'package:fluttips/ui/section/error_handler/error_handler_cubit.dart';
import 'package:fluttips/ui/about/about_cubit.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fluttips/core/common/config.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => AboutCubit(context.read<ErrorHandlerCubit>()),
        child: const _AboutContentScreen(),
      );
}

class _AboutContentScreen extends StatelessWidget {
  const _AboutContentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        margin: EdgeInsets.only(left: 65, top: 30.h),
        alignment: Alignment.centerLeft,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const _AboutSection(),
              SizedBox(height: 15.h),
              const _CreditsSection(),
              SizedBox(height: 15.h),
              const _TermsAndPolicySection(),
              SizedBox(height: 20.h),
              Divider(color: context.theme.colors.surface),
              SizedBox(height: 20.h),
              const _SuggestionSection(),
            ],
          ),
        ),
      );
}

class _SuggestionSection extends StatelessWidget {
  const _SuggestionSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.localizations.about_button_suggestion,
            style: context.theme.textStyles.titleMedium!.copyWith(
              color: context.theme.colors.surface,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            context.localizations.about_hear,
            style: context.theme.textStyles.bodyLarge!.copyWith(
              color: context.theme.colors.surface,
            ),
          ),
          SizedBox(height: 10.h),
          AppButton(
            text: context.localizations.about_button_send_email_feedback,
            action: () => context.read<AboutCubit>().sendEmail(),
          ),
        ],
      );
}

class _TermsAndPolicySection extends StatelessWidget {
  const _TermsAndPolicySection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        children: [
          AppButton(
            text: context.localizations.about_button_terms,
            action: () =>
                context.read<AboutCubit>().onTermsAndConditionsButtonPressed(),
          ),
          SizedBox(width: 15.w),
          AppButton(
            text: context.localizations.about_button_privacy,
            action: () =>
                context.read<AboutCubit>().onPrivacyPolicyButtonPressed(),
          ),
        ],
      );
}

class _CreditsSection extends StatelessWidget {
  const _CreditsSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Text(
            context.localizations.about_credits,
            style: context.theme.textStyles.titleMedium!.copyWith(
              color: context.theme.colors.surface,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 10.w),
          Text(
            context.localizations.about_images,
            style: context.theme.textStyles.bodyLarge!.copyWith(
              color: context.theme.colors.surface,
            ),
          ),
          InkWell(
            child: Text(
              context.localizations.about_vandadnp,
              style: context.theme.textStyles.bodyLarge!.copyWith(
                color: context.theme.colors.surface,
                decoration: TextDecoration.underline,
              ),
            ),
            onTap: () => launchUrl(
              Uri.parse(Config.imagesTipsRepository),
            ),
          ),
          SizedBox(width: 10.w),
          Text(
            context.localizations.about_videos,
            style: context.theme.textStyles.bodyLarge!.copyWith(
              color: context.theme.colors.surface,
            ),
          ),
          InkWell(
            child: Text(
              context.localizations.about_widgets,
              style: context.theme.textStyles.bodyLarge!.copyWith(
                color: context.theme.colors.surface,
                decoration: TextDecoration.underline,
              ),
            ),
            onTap: () => launchUrl(
              Uri.parse(Config.widgetOfTheWeekLink),
            ),
          ),
        ],
      );
}

class _AboutSection extends StatelessWidget {
  const _AboutSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.localizations.about,
            style: context.theme.textStyles.headlineLarge!.copyWith(
              color: context.theme.colors.surface,
              fontWeight: FontWeight.bold,
            ),
            textDirection: TextDirection.ltr,
          ),
          SizedBox(height: 10.h),
          Text(
            context.localizations.about_fluttips,
            style: context.theme.textStyles.bodyLarge!.copyWith(
              color: context.theme.colors.surface,
            ),
          ),
        ],
      );
}
