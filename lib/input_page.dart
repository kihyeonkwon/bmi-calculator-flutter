import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const Color boxColor = Color(0xFF89B5AF);
const Color bottomColor = Color(0xffD0CAB2);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(children: [
        Expanded(
            child: Row(
          children: [
            Expanded(
              child: ReusableCard(
                  color: boxColor,
                  cardChild: CardChildColumn('MALE', FontAwesomeIcons.mars)),
            ),
            Expanded(
                child: ReusableCard(
                    color: boxColor,
                    cardChild:
                        CardChildColumn('FEMALE', FontAwesomeIcons.venus)))
          ],
        )),
        Expanded(child: ReusableCard(color: boxColor)),
        Expanded(
            child: Row(
          children: [
            Expanded(
              child: ReusableCard(color: boxColor),
            ),
            Expanded(
              child: ReusableCard(color: boxColor),
            )
          ],
        )),
        Container(
            color: bottomColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight)
      ]),
    );
  }
}
