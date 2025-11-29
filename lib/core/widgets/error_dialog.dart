import 'package:flutter/material.dart';
import 'package:fruits_market/core/helpers/extension.dart';
import 'package:fruits_market/core/networking/api_error_model.dart';
import 'package:fruits_market/core/utils/app_text_style.dart';

void showErrorDialog(BuildContext context, ApiErrorModel apiErroeModel) {
    context.pop();
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            icon: const Icon(Icons.error, color: Colors.red, size: 32),
            content: Text(
              apiErroeModel.message??"error",
              style: AppTextStyle.arialRegular18,
            ),
            actions: [
              TextButton(
                onPressed: () {
                  context.pop();
                },
                child: Text('Got it', style: AppTextStyle.arialRegular),
              ),
            ],
          ),
    );
  }
