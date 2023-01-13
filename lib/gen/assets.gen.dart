/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/icAppLogo.png
  AssetGenImage get icAppLogo =>
      const AssetGenImage('assets/images/icAppLogo.png');

  /// File path: assets/images/ic_github_logo.png
  AssetGenImage get icGithubLogo =>
      const AssetGenImage('assets/images/ic_github_logo.png');

  /// File path: assets/images/ic_instagram_logo.png
  AssetGenImage get icInstagramLogo =>
      const AssetGenImage('assets/images/ic_instagram_logo.png');

  /// File path: assets/images/ic_linkedln_logo.png
  AssetGenImage get icLinkedlnLogo =>
      const AssetGenImage('assets/images/ic_linkedln_logo.png');

  /// File path: assets/images/ic_twitter_logo.png
  AssetGenImage get icTwitterLogo =>
      const AssetGenImage('assets/images/ic_twitter_logo.png');

  /// File path: assets/images/onboarding_branding.png
  AssetGenImage get onboardingBranding =>
      const AssetGenImage('assets/images/onboarding_branding.png');

  /// File path: assets/images/onboarding_describeApp.png
  AssetGenImage get onboardingDescribeApp =>
      const AssetGenImage('assets/images/onboarding_describeApp.png');

  /// File path: assets/images/onboarding_favourite.png
  AssetGenImage get onboardingFavourite =>
      const AssetGenImage('assets/images/onboarding_favourite.png');

  /// File path: assets/images/onboarding_gestures.png
  AssetGenImage get onboardingGestures =>
      const AssetGenImage('assets/images/onboarding_gestures.png');

  /// File path: assets/images/onboarding_logo_app.png
  AssetGenImage get onboardingLogoApp =>
      const AssetGenImage('assets/images/onboarding_logo_app.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        icAppLogo,
        icGithubLogo,
        icInstagramLogo,
        icLinkedlnLogo,
        icTwitterLogo,
        onboardingBranding,
        onboardingDescribeApp,
        onboardingFavourite,
        onboardingGestures,
        onboardingLogoApp
      ];
}

class $AssetsPolicyAndTermsGen {
  const $AssetsPolicyAndTermsGen();

  /// File path: assets/policy_and_terms/privacy_policy.html
  String get privacyPolicy => 'assets/policy_and_terms/privacy_policy.html';

  /// File path: assets/policy_and_terms/terms_and_conditions.html
  String get termsAndConditions =>
      'assets/policy_and_terms/terms_and_conditions.html';

  /// List of all assets
  List<String> get values => [privacyPolicy, termsAndConditions];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsPolicyAndTermsGen policyAndTerms =
      $AssetsPolicyAndTermsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
