import 'package:counter_app/app_constants/app_colors.dart';
import 'package:counter_app/widgets/container_widget.dart';
import 'package:flutter/material.dart';

class ResultView extends StatefulWidget {
  const ResultView({this.amount, key}) : super(key: key);
  final int amount;
  @override
  _ResultViewState createState() => _ResultViewState();
}

class _ResultViewState extends State<ResultView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon:
              const Icon(Icons.arrow_back_ios, color: AppColors.containerColor),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: ContainerWidget(
            buttonColor: AppColors.containerColor,
            number: widget.amount,
            containerNavigation: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}
