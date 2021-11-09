import 'package:flutter/material.dart';
import 'pages/input_page.dart';
import 'pages/results_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
        colorScheme: ThemeData().colorScheme.copyWith(
            primary: Color(0xff96C7C1),
            secondary: Color(0xff96C7C1),
            background: Color(0xffD0CAB2)),
        scaffoldBackgroundColor: Color(0xffDED9C4),
      ),
      routes: {
        '/': (context) => InputPage(),
        '/result': (context) => ResultsPage()
      },
      initialRoute: '/',
    );
  }
}
