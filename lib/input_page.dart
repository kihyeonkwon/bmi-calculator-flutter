import 'package:bmi_calculator/konstants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'konstants.dart';

enum Gender { Male, Female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  double _height = 170.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
            child: Row(
          children: [
            Expanded(
                child: ReusableCard(
              color: selectedGender == Gender.Male
                  ? kActiveBoxColor
                  : kInactiveBoxColor,
              cardChild: CardChildColumn('MALE', FontAwesomeIcons.mars),
              onPress: () {
                setState(() {
                  selectedGender = Gender.Male;
                });
              },
            )),
            Expanded(
                child: ReusableCard(
                    color: selectedGender == Gender.Female
                        ? kActiveBoxColor
                        : kInactiveBoxColor,
                    cardChild:
                        CardChildColumn('FEMALE', FontAwesomeIcons.venus),
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.Female;
                      });
                    }))
          ],
        )),
        Expanded(
            child: ReusableCard(
          color: kActiveBoxColor,
          cardChild: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('HEIGHT', style: kBoxTextStyle),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(_height.round().toString(), style: kBoxNumberStyle),
                  Text('cm', style: kBoxTextStyle)
                ],
              ),
              Slider(
                value: _height,
                min: 120,
                max: 220,
                label: _height.round().toString(),
                activeColor: Color(0XFFEB1555),
                inactiveColor: Color(0XFF8D8E98),
                onChanged: (double value) {
                  setState(() {
                    _height = value;
                  });
                },
              )
            ],
          ),
        )),
        Expanded(
            child: Row(
          children: [
            Expanded(
              child: ReusableCard(color: kActiveBoxColor),
            ),
            Expanded(
              child: ReusableCard(color: kActiveBoxColor),
            )
          ],
        )),
        Container(
            color: kBottomColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: kBottomContainerHeight)
      ]),
    );
  }
}
