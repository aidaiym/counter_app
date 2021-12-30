import 'package:counter_app/app_constants/app_colors.dart';
import 'package:flutter/cupertino.dart';

class AppTextStyles {
  static const TextStyle appTitle = TextStyle(
    fontSize: 30.0,
    fontWeight: FontWeight.bold,
    color: AppColors.counterColor,
  );
  static const TextStyle containerNumber = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    color: AppColors.counterColor,
  );
  static const TextStyle counterTexts = TextStyle(
    color: AppColors.resultColor,
    fontSize: 40.0,
  );
}
