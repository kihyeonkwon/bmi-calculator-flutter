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
  int _weight = 70;
  int _age = 20;

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
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: Color(0XFF8D8E98),
                    thumbColor: Color(0XFFEB1555),
                    overlayColor: Color(0X292B1555),
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30)),
                child: Slider(
                  value: _height,
                  min: 120,
                  max: 220,
                  label: _height.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      _height = value;
                    });
                  },
                ),
              )
            ],
          ),
        )),
        Expanded(
            child: Row(
          children: [
            Expanded(
              child: ReusableCard(
                color: kActiveBoxColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('WEIGHT', style: kBoxTextStyle),
                    Text(_weight.toString(), style: kBoxNumberStyle),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIconButton(FontAwesomeIcons.minus, () {
                          setState(() {
                            _weight -= 1;
                          });
                        }),
                        SizedBox(width: 20),
                        RoundIconButton(FontAwesomeIcons.plus, () {
                          setState(() {
                            _weight += 1;
                          });
                        })
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: ReusableCard(
                color: kActiveBoxColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('AGE', style: kBoxTextStyle),
                    Text(_age.toString(), style: kBoxNumberStyle),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIconButton(FontAwesomeIcons.minus, () {
                          setState(() {
                            _age -= 1;
                          });
                        }),
                        SizedBox(width: 20),
                        RoundIconButton(FontAwesomeIcons.plus, () {
                          setState(() {
                            _age += 1;
                          });
                        })
                      ],
                    )
                  ],
                ),
              ),
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
