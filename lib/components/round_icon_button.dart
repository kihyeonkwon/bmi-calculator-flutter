import 'package:bmi_calculator/konstants.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  RoundIconButton(this.icon, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        elevation: 0.0,
        child: Icon(icon),
        onPressed: () {
          onPressed();
        },
        constraints: BoxConstraints.tightFor(width: 56, height: 56),
        shape: CircleBorder(),
        fillColor: Color(0XFF4C4F5E));
  }
}
