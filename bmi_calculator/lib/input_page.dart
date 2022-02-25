// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'neuomorph_card.dart';

const bottomBarHeight = 60.0;
const bottomBarColor = Colors.lightBlue;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  bool _isElevated = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f3f8),
      appBar: AppBar(
        title: Center(
          child: Text(
            'BMI Calculator',
            style: TextStyle(color: Colors.grey.shade700, fontFamily: 'Amenable'),
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
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.marsStroke,
                      label: 'Male',
                    ),
                  ),
                ),
                Expanded(
                    child: NeumorphCard(
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.venus,
                    label: 'Female',
                  ),
                )),
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



