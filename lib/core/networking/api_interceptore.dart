import 'package:dio/dio.dart';
import 'package:fruits_market/core/helpers/constant.dart';
import 'package:fruits_market/core/helpers/shared_pref_helper.dart';

class ApiInterceptors extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers['Authorization'] =
        await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken) !=
                null
            ? 'Bearer ${await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken)}'
            : null;

    super.onRequest(options, handler);
  }
}
