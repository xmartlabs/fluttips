import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_template/core/repository/project_repository.dart';
import 'package:flutter_template/core/repository/session_repository.dart';
import 'package:flutter_template/core/repository/tip_repository.dart';
import 'package:flutter_template/core/source/auth_local_source.dart';
import 'package:flutter_template/core/source/auth_remote_source.dart';
import 'package:flutter_template/core/source/common/app_database.dart';
import 'package:flutter_template/core/source/common/auth_interceptor.dart';
import 'package:flutter_template/core/source/common/http_service.dart';
import 'package:flutter_template/core/source/project_remote_source.dart';
import 'package:flutter_template/core/source/tip_remote_source.dart';
import 'package:get_it/get_it.dart';

class RepositoryDiModule {
  RepositoryDiModule._privateConstructor();

  static final RepositoryDiModule _instance =
      RepositoryDiModule._privateConstructor();

  factory RepositoryDiModule() => _instance;

  void setupModule(GetIt locator) {
    locator._setupProvidersAndUtils();
    locator._setupSources();
    locator._setupRepositories();
  }
}

extension _GetItUseCaseDiModuleExtensions on GetIt {
  void _setupProvidersAndUtils() {
    registerLazySingleton(FlutterSecureStorage.new);
    registerLazySingleton(() => HttpServiceDio([AuthInterceptor(get())]));
    registerSingletonAsync(
        () => $FloorAppDatabase.databaseBuilder('app_database.db').build());
  }

  void _setupRepositories() {
    registerLazySingleton(() => SessionRepository(get(), get(), get()));
    registerLazySingleton(() => ProjectRepository(get(), get()));
    registerLazySingleton(() => TipRepository(get()));
  }

  void _setupSources() {
    registerLazySingleton(() => AuthLocalSource(get()));
    registerLazySingleton(() => AuthRemoteSource(get()));
    registerLazySingleton(() => ProjectRemoteSource(get()));
    registerLazySingleton(() => TipRemoteSource(get()));
    registerLazySingleton(() => get<AppDatabase>().projectLocalSource);
  }
}
