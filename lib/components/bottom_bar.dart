import 'package:bmi_calculator/konstants.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final Function onTap;
  final String text;

  BottomBar(this.onTap, this.text);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          color: kBottomColor,
          margin: EdgeInsets.only(top: 10),
          width: double.infinity,
          height: kBottomContainerHeight,
          child: Center(
              child: Text(
            text,
            style: kLargeButtonTextStyle,
            textAlign: TextAlign.center,
          ))),
    );
  }
}
