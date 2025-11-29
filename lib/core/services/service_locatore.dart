import 'package:dio/dio.dart';
import 'package:fruits_market/feature/auth/data/apis/auth_api_service.dart';
import 'package:fruits_market/core/networking/dio_factory.dart';
import 'package:fruits_market/feature/auth/data/repos/auth_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setup() {
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<AuthApiService>(() => AuthApiService(dio));

  getIt.registerLazySingleton<AuthRepo>(() => AuthRepo(getIt()));
}
