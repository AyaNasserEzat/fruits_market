import 'package:flutter/material.dart';

class CustomArrowBackIcon extends StatelessWidget {
  const CustomArrowBackIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(Icons.arrow_back_ios),
    );
  }
}
