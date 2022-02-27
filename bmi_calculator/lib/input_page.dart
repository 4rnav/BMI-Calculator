// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'neuomorph_card.dart';

const bottomBarHeight = 60.0;
const bottomBarColor = Colors.lightBlue;
Color maleCardColor = Color(0xFFEEEEEE);
Color femaleCardColor = Color(0xFFEEEEEE);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  bool _isElevated = false;

  static const activeColour = Color.fromARGB(255, 221, 221, 221);
  static const inactiveColour = Color(0xFFEEEEEE);

  //1 = male, 0 = female
  void updateColour(int gender) {
    if (gender == 1) {
      if (maleCardColor == inactiveColour) {
        maleCardColor = activeColour;
        femaleCardColor = inactiveColour;
      } else {
        maleCardColor = inactiveColour;
      }
    } else {
      if (femaleCardColor == inactiveColour) {
        femaleCardColor = activeColour;
        maleCardColor = inactiveColour;
      } else {
        femaleCardColor = inactiveColour;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f3f8),
      appBar: AppBar(
        title: Center(
          child: Text(
            'BMI Calculator',
            style:
                TextStyle(color: Colors.grey.shade700, fontFamily: 'Poppins'),
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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(1);
                      });
                    },
                    child: NeumorphCard(
                      cardColor: maleCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.marsStroke,
                        label: 'Male',
                        iconColor: Colors.blueAccent,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                        setState(() {
                          updateColour(0);
                        });
                    },
                    child: NeumorphCard(
                      cardColor: femaleCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'Female',
                        iconColor: Colors.pink,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: NeumorphCard()),
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
