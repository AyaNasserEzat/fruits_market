import 'package:fruits_market/core/networking/api_error_handler.dart';
import 'package:fruits_market/core/networking/api_result.dart';
import 'package:fruits_market/feature/profile/data/apis/profile_api_service.dart';
import 'package:fruits_market/feature/profile/data/models/profile_model.dart';

class ProfileRepo {
  ProfileRepo(this.profileApiService);
  ProfileApiService profileApiService;
  Future<ApiResult<ProfileModel>> getProfile() async {
    try {
      final response = await profileApiService.getProfle();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handel(e));
    }
  }
}
