import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruits_market/core/networking/api_error_model.dart';
import 'package:fruits_market/feature/profile/data/models/profile_model.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;

  const factory ProfileState.getProfileLoading() = GetProfileLoading;

  const factory ProfileState.getProfileSuccess(ProfileModel data) =
      GetProfileSuccess;

  const factory ProfileState.getProfileError(ApiErrorModel apiErroeModel) = GetProfileError;
}
