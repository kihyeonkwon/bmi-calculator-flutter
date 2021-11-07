import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const Color activeBoxColor = Color(0xFFABD9CF);
const Color inactiveBoxColor = Color(0xFF89B5AF);
const Color bottomColor = Color(0xffD0CAB2);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleBoxColor = inactiveBoxColor;
  Color femaleBoxColor = inactiveBoxColor;

  void updateColor(int gender){
    if(gender == 1){
      if(maleBoxColor == inactiveBoxColor){
        maleBoxColor = activeBoxColor;
        femaleBoxColor = inactiveBoxColor;
      }else{
        maleBoxColor = inactiveBoxColor;
      }
    }else{
      if(femaleBoxColor == inactiveBoxColor){
        femaleBoxColor = activeBoxColor;
        maleBoxColor = inactiveBoxColor;
      }else{
        femaleBoxColor = inactiveBoxColor;
      }
    }

  }

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
              child: GestureDetector(
                onTap:(){
                  setState(() {
                    updateColor(1);
                  });
                },
                child: ReusableCard(
                    color: maleBoxColor,
                    cardChild: CardChildColumn('MALE', FontAwesomeIcons.mars)),
              ),
            ),
            Expanded(
                child: GestureDetector(
                  onTap:(){
            setState(() {
              updateColor(2);
            });
            },
                  child: ReusableCard(
                      color: femaleBoxColor,
                      cardChild:
                          CardChildColumn('FEMALE', FontAwesomeIcons.venus)),
                ))
          ],
        )),
        Expanded(child: ReusableCard(color: activeBoxColor)),
        Expanded(
            child: Row(
          children: [
            Expanded(
              child: ReusableCard(color: activeBoxColor),
            ),
            Expanded(
              child: ReusableCard(color: activeBoxColor),
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
