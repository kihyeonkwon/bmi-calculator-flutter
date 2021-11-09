import 'package:flutter/material.dart';
import '../components/reusable_card.dart';
import '../components/bottom_bar.dart';
import '../konstants.dart';
import '../bmi_brain.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final BMIBrain _brain = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR!'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'Your Result',
                      style: kTitleTextStyle,
                    ))),
            Expanded(
              flex: 5,
              child: Container(
                child: ReusableCard(
                  color: kActiveBoxColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(_brain.result(), style: kResultTextStyle),
                      Text(_brain.calculateBMI(), style: kBMITextStyle),
                      Text(_brain.advice(), style: kBodyTextStyle)
                    ],
                  ),
                ),
              ),
            ),
            BottomBar(() {
              Navigator.pushNamed(context, '/');
            }, 'Retry')
          ],
        ));
  }
}
