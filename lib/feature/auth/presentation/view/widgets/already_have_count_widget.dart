import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';
import 'package:fruits_market/feature/auth/presentation/view/login_view.dart';

class AlreadyHaveCountWidget extends StatelessWidget {
  const AlreadyHaveCountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text.rich(
        TextSpan(
          text: 'Aleardy have an account? |',
          style: AppTextStyle.arialRegular18,
           recognizer:
                  TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (_) => LoginView()),
                      );
                    },
          children: [
            TextSpan(text: 'Login', style: AppTextStyle.textUnderLinBlue),
          ],
        ),
      ),
    );
  }
}
