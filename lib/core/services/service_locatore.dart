
import 'package:fruits_market/core/helpers/cache_helper.dart';
import 'package:get_it/get_it.dart';

final sl =GetIt.instance;
void setup(){
  sl.registerLazySingleton<CacheHelper>(()=>CacheHelper());
}