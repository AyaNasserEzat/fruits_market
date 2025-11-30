import 'package:dio/dio.dart';
import 'package:fruits_market/core/networking/api_constant.dart';
import 'package:fruits_market/feature/profile/data/models/profile_model.dart';
import 'package:retrofit/retrofit.dart';

part 'profile_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ProfileApiService {
  factory ProfileApiService(Dio dio, {String? baseUrl}) = _ProfileApiService;

  @GET(ApiConstants.getProfile)
  Future<ProfileModel> getProfle();
}
