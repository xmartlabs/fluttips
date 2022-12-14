import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fluttips/core/repository/session_repository.dart';
import 'package:fluttips/core/repository/tip_repository.dart';
import 'package:fluttips/core/source/common/http_service.dart';
import 'package:fluttips/core/source/remote_source/tip_remote_source.dart';
import 'package:get_it/get_it.dart';
import 'package:fluttips/core/source/database.dart';
import 'package:fluttips/core/source/local_source/session_local_source.dart';

class RepositoryDiModule {
  RepositoryDiModule._privateConstructor();

  static final RepositoryDiModule _instance =
      RepositoryDiModule._privateConstructor();

  factory RepositoryDiModule() => _instance;

  void setupModule(GetIt locator) {
    locator
      .._setupProvidersAndUtils()
      .._setupSources()
      .._setupRepositories();
  }
}

extension _GetItUseCaseDiModuleExtensions on GetIt {
  void _setupProvidersAndUtils() {
    registerLazySingleton(FlutterSecureStorage.new);
    registerLazySingleton(() => HttpServiceDio([]));
    registerSingletonAsync(
      () => $FloorAppDatabase.databaseBuilder('database.db').build(),
    );
  }

  void _setupRepositories() {
    registerLazySingleton(() => SessionRepository());
    registerLazySingleton(() => TipRepository(get(), get()));
  }

  void _setupSources() {
    registerLazySingleton(() => SessionLocalSource(get()));
    registerLazySingleton(() => TipRemoteSource(get()));
    registerLazySingleton(() => get<AppDatabase>().tipsLocalSource);
  }
}
