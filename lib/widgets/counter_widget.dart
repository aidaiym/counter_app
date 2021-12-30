import 'package:counter_app/app_constants/app_colors.dart';
import 'package:counter_app/app_constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget(
      {@required this.counterText, @required this.counterFunction, Key key})
      : super(key: key);
  final String counterText;
  final Function counterFunction;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: counterFunction,
      child: Container(
        height: 50,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: AppColors.counterColor,
        ),
        child: Center(
          child: Text(counterText, style: AppTextStyles.counterTexts),
        ),
      ),
    );
  }
}
