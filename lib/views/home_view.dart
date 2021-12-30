import 'package:counter_app/app_constants/app_colors.dart';
import 'package:counter_app/app_constants/app_text_styles.dart';
import 'package:counter_app/views/result_view.dart';
import 'package:counter_app/widgets/container_widget.dart';
import 'package:counter_app/widgets/counter_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              'Task 01',
              style: AppTextStyles.appTitle,
            ),
            const SizedBox(
              height: 200.0,
            ),
            ContainerWidget(
              containerNavigation: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultView(amount: _number),
                ),
              ),
              number: _number,
              buttonColor: AppColors.containerColor,
            ),
            const SizedBox(
              height: 60.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CounterWidget(
                  counterFunction: _decrement,
                  counterText: '-',
                ),
                const SizedBox(
                  width: 20.0,
                ),
                CounterWidget(
                  counterFunction: _increment,
                  counterText: '+',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _increment() {
    _number++;
    setState(() {});
  }

  void _decrement() {
    _number--;
    setState(() {});
  }
}
