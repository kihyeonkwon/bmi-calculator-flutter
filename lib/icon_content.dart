import 'package:flutter/material.dart';

class CardChildColumn extends StatelessWidget {
  @override
  CardChildColumn(this.text, this.icon);

  final String text;
  final IconData icon;

  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(icon, size: 80.0),
      SizedBox(height: 15.0),
      Text(text, style: TextStyle(fontSize: 18.0, color: Color(0xFF8d8e98)))
    ]);
  }
}
