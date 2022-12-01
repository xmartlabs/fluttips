import 'package:fluttips/ui/common/assets_route.dart';

enum Onboarding {
  onboarding_1(
    AssetsRoute.onboarding_1,
    'Find lots of tips and tricks',
    'for Flutter development',
  ),
  onboarding_2(
    AssetsRoute.onboarding_2,
    'Save your favorite tips',
    ' to have all of them together',
  ),
  onboarding_3(
    AssetsRoute.onboarding_3,
    'Navigate through the tip pages',
    ' swiping up and down',
  );

  const Onboarding(this.imageUrl, this.firstText, this.secondText);

  final String imageUrl;
  final String firstText;
  final String secondText;
}
