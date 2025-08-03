import 'package:fruits_market/core/utils/app_assets.dart';
import 'package:fruits_market/core/utils/app_strings.dart';

class OnBordingModel {
  final String title;
  final String subTitle;
  final String image;

  OnBordingModel({
    required this.title,
    required this.subTitle,
    required this.image,
  });
  static List<OnBordingModel> onBordingList = [
    OnBordingModel(
      title: AppStrings.onBordingTitle1,
      subTitle: AppStrings.onBordingSubTitle1,
      image: AppAssets.appNameImg,
    ),
    OnBordingModel(
      title: AppStrings.onBordingTitle2,
      subTitle: AppStrings.onBordingSubTitle2,
      image: AppAssets.appNameImg,
    ),
    OnBordingModel(
      title: AppStrings.onBordingTitle3,
      subTitle: AppStrings.onBordingSubTitle3,
      image: AppAssets.appNameImg,
    ),
  ];
}
