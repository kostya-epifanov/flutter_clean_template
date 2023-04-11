
import 'package:flutter/widgets.dart';
import 'package:flutter_clean_template/core/navigation/global_navigator.dart';
import 'package:flutter_clean_template/core/network/http/http_client.dart';
import 'package:flutter_clean_template/core/network/http/http_interceptor.dart';
import 'package:flutter_clean_template/features/random_int_viewer/data/datasources/random_int_datasource.dart';
import 'package:flutter_clean_template/features/random_int_viewer/data/repository/random_int_repository.dart';
import 'package:flutter_clean_template/features/random_int_viewer/domain/usecases/get_random_int_usecase.dart';
import 'package:flutter_clean_template/features/random_int_viewer/presentation/logic/random_int_viewer_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

final GetIt locator = GetIt.instance;
bool isLocatorInitialized = false;

Future setupLocator(GlobalKey<NavigatorState> navigatorKey) async {
  await locator.reset();
  locator.registerSingleton(GlobalNavigator(navigatorKey: navigatorKey));
  _setupServices();
  _setupDataSources();
  _setupRepositories();
  _setupUsecases();
  _setupCubits();
  isLocatorInitialized = true;
  return isLocatorInitialized;
}

void _setupServices() {
  locator.registerLazySingleton(() => Logger());
  locator.registerLazySingleton(() => HttpInterceptor(locator()));
  locator.registerLazySingleton(() => HttpClient(locator()));
}

void _setupDataSources() {
  locator.registerLazySingleton(() => RandomIntRemoteDataSource(locator()));
  locator.registerLazySingleton(() => RandomIntLocalDataSource());
}

void _setupRepositories() {
  locator.registerLazySingleton(() => RandomIntRepository(locator()));
}

void _setupUsecases() {
  locator.registerLazySingleton(() => GetRandomIntUseCase(locator()));
}

void _setupCubits() {
  locator.registerFactory(() => RandomIntViewerCubit());
}
