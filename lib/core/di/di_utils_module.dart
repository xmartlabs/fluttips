import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fluttips/core/source/database.dart';
import 'package:fluttips/core/source/providers/shared_preferences_provider.dart';
import 'package:fluttips/ui/app_router.dart';
import 'package:fluttips/ui/router/app_status_router_guard.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttips/core/common/config.dart';

class UtilsDiModule {
  UtilsDiModule._privateConstructor();

  static final UtilsDiModule _instance = UtilsDiModule._privateConstructor();

  factory UtilsDiModule() => _instance;

  void setupModule(GetIt locator) {
    locator._setupModule();
  }

  Future<void> setupProviders(GetIt locator) {
    locator._setupProviders();
    return locator.allReady();
  }
}

extension _GetItUtilsDiModuleExtensions on GetIt {
  void _setupModule() {
    registerSingleton(NotOnboardedGuard(get()));
    registerSingleton(OnboardedGuard(get()));
    registerSingleton(
      AppRouter(notOnboardedGuard: get(), onboardedGuard: get()),
    );
  }

  void _setupProviders() {
    registerSingletonAsync(
      () => $FloorAppDatabase.databaseBuilder(Config.databaseName).build(),
    );
    registerLazySingleton(FlutterSecureStorage.new);
    registerSingletonAsync(() => SharedPreferences.getInstance());

    registerSingletonAsync(
      () async => LocalSharedPreferencesStorage(
        get(),
        await getAsync<SharedPreferences>(),
      ).init(),
    );
  }
}
