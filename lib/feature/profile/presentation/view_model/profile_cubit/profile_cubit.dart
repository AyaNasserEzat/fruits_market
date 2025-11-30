import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_market/core/networking/api_result.dart';
import 'package:fruits_market/feature/profile/data/repos/profile_repo.dart';
import 'package:fruits_market/feature/profile/presentation/view_model/profile_cubit/profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepo repo;

  ProfileCubit(this.repo) : super(const ProfileState.initial());

  Future<void> loadProfile() async {
    emit(const ProfileState.getProfileLoading());

    final res = await repo.getProfile();
    res.when(
      success: (data) => emit(ProfileState.getProfileSuccess(data)),
      failure:
          (apiErrorModel) => emit(ProfileState.getProfileError(apiErrorModel)),
    );
  }
}
