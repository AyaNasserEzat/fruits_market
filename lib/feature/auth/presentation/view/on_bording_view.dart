import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:fruits_market/feature/auth/data/models/on_bording_model.dart';
import 'package:fruits_market/feature/auth/presentation/view/widgets/page_view_item.dart';

class OnBordingView extends StatefulWidget {
  const OnBordingView({super.key});

  @override
  State<OnBordingView> createState() => _OnBordingViewState();
}

class _OnBordingViewState extends State<OnBordingView> {
  int currentIndex=0;
  PageController pageController=PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(
          dragDevices: {
            PointerDeviceKind.touch,
            PointerDeviceKind.mouse,
          },),
        child: PageView.builder(
          controller: pageController,
          onPageChanged: (int index) {
            
            setState(() {
              currentIndex=index;
            });
          },
          itemCount: OnBordingModel.onBordingList.length,
          itemBuilder: (context, index) {
            return PageViewItem(onBordingModel: OnBordingModel.onBordingList[index], currentIndex: currentIndex, pageController: pageController,);
          },
        ),
      ),
    );
  }
}

