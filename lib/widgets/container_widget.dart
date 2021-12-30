import 'package:counter_app/app_constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget(
      {@required this.buttonColor,
      @required this.containerNavigation,
      @required this.number,
      Key key})
      : super(key: key);
  final Color buttonColor;
  final VoidCallback containerNavigation;
  final int number;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: containerNavigation,
      child: Container(
        height: 50,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: buttonColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Number: ',
              style: AppTextStyles.containerNumber,
            ),
            Text(
              '$number',
              style: AppTextStyles.containerNumber,
            ),
          ],
        ),
      ),
    );
  }
}
