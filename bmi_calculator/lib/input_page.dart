// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'neuomorph_card.dart';
import 'constants.dart';

// Color maleCardColor = Color(0xFFEEEEEE);
// Color femaleCardColor = Color(0xFFEEEEEE);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  //bool _isElevated = false;

  static const activeColour = Color.fromARGB(255, 209, 209, 209);
  static const inactiveColour = Color(0xFFEEEEEE);

  Gender? selectedGender;
  int heightInput = kMinHeight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f3f8),
      appBar: AppBar(
        title: Center(
          child: Text(
            'BMI Calculator',
            style: TextStyle(
                color: Colors.blueGrey.shade700,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.grey[300],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: NeumorphCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    cardColor: selectedGender == Gender.male
                        ? activeColour
                        : inactiveColour,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.male,
                      label: 'Male',
                      iconColor: Colors.blueAccent,
                    ),
                  ),
                ),
                Expanded(
                  child: NeumorphCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    cardColor: selectedGender == Gender.female
                        ? activeColour
                        : inactiveColour,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.female,
                      label: 'Female',
                      iconColor: Colors.pink,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: NeumorphCard(
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Height',
                  style: kLabelTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      heightInput.toString(),
                      style: kNumberTextStyle,
                    ),
                    Text(
                      ' cm',
                      style: kLabelTextStyle,
                    )
                  ],
                ),
                Slider(
                    value: heightInput.toDouble(),
                    max: kMaxHeight.toDouble(),
                    min: kMinHeight.toDouble(),
                    inactiveColor: Colors.grey.shade300,
                    activeColor: Colors.yellow.shade700,
                    onChanged: (double newValue) {
                      setState(() {
                        heightInput = newValue.toInt();
                      });
                    }),
              ],
            ),
            cardColor: inactiveColour,
          )),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: NeumorphCard()),
                Expanded(child: NeumorphCard()),
              ],
            ),
          ),
          Container(
            color: bottomBarColor,
            margin: EdgeInsets.only(top: 10.0),
            height: bottomBarHeight,
          )
        ],
      ),
    );
  }
}
