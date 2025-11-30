import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';
import 'package:fruits_market/feature/profile/presentation/view_model/profile_cubit/profile_cubit.dart';
import 'package:fruits_market/feature/profile/presentation/view_model/profile_cubit/profile_state.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      buildWhen:
          (previous, current) =>
              current is GetProfileError ||
              current is GetProfileLoading ||
              current is GetProfileSuccess,
      builder: (context, state) {
        return state.maybeWhen(
          getProfileLoading: () => CircularProgressIndicator(),
          getProfileError:
              (apiErroeModel) => Text(apiErroeModel.message ?? "error"),
          getProfileSuccess: (profileModel) {
            return Column(
              children: [
                Text(
                  "Welcom, ${profileModel.data?.name}",
                  style: AppTextStyle.arialRegular18.copyWith(fontSize: 24),
                ),
                Text(
                  profileModel.data?.mobile ?? "",
                  style: AppTextStyle.arialRegular18,
                ),
              ],
            );
          },
          orElse: () => Text('rr'),
        );
      },
    );
  }
}
