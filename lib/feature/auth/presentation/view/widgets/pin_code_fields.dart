import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/app_colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeFields extends StatefulWidget {
  const PinCodeFields({super.key});

  @override
  State<PinCodeFields> createState() => _PinCodeFieldsState();
}

class _PinCodeFieldsState extends State<PinCodeFields> {
  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 4,
      obscureText: true,
      obscuringCharacter: '•',

      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.circle,

        fieldHeight: 60,
        fieldWidth: 60,
        activeFillColor: AppColors.lightGrey,
        inactiveFillColor: const Color(0xFFF0F0F0),
        selectedFillColor: AppColors.lightGrey,
        activeColor: AppColors.grey,
        selectedColor: AppColors.grey,
        inactiveColor: Colors.grey,
        borderWidth: 1,
      ),
      animationDuration: Duration(milliseconds: 300),
      backgroundColor: Colors.transparent,
      enableActiveFill: true,
      textStyle: TextStyle(color: AppColors.grey),
      onCompleted: (v) {
        print("Completed: $v");
      },
      onChanged: (value) {
        print(value);
      },
    );
  }
}
