import 'package:flutter/material.dart';
import 'input_page.dart';

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
      home: InputPage(),
    );
  }
}
