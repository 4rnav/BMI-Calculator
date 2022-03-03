// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bmi_calculator/calc_logic.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/bottom_button.dart';
import '../components/neuomorph_card.dart';
import '../constants.dart';
import 'result_page.dart';
import '../components/bottom_button.dart';
import '../components/round_icon_button.dart';
import '../components/icon_content.dart';


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
  int heightInput = 150;
  int inputWeight = 40;
  int inputAge = 20;
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
        backgroundColor: Colors.grey.shade300,
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
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 10.0),
                      inactiveTrackColor: Colors.grey.shade300,
                      activeTrackColor: Colors.yellow.shade600,
                      thumbColor: Colors.yellow,
                      overlayColor: Color(0x29FBC02D),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 25.0)),
                  child: Slider(
                      value: heightInput.toDouble(),
                      max: kMaxHeight.toDouble(),
                      min: kMinHeight.toDouble(),
                      onChanged: (double newValue) {
                        setState(() {
                          heightInput = newValue.toInt();
                        });
                      }),
                ),
              ],
            ),
            cardColor: inactiveColour,
          )),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: NeumorphCard(
                    cardColor: inactiveColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Weight',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          inputWeight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    inputWeight--;
                                  });
                                }),
                            SizedBox(
                              width: 20.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  inputWeight++;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                    child: NeumorphCard(
                  cardColor: inactiveColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Age',
                        style: kLabelTextStyle,
                      ),
                      Text(
                        inputAge.toString(),
                        style: kNumberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  inputAge--;
                                });
                              }),
                          SizedBox(
                            width: 20.0,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                inputAge++;
                              });
                            },
                          )
                        ],
                      )
                    ],
                  ),
                )),
              ],
            ),
          ),
          BottomButton(
            onPress: () {
              CalculatorLogic calc1 =
                  CalculatorLogic(height: heightInput, weight: inputWeight);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                    bmiResult: calc1.calculateBMI(),
                    bmiInterpretation: calc1.getInterpretation(),
                    bmiResultText: calc1.getResult().toUpperCase(),
                  ),
                ),
              );
            },
            buttonLabel: 'CALCULATE',
          ),
        ],
      ),
    );
  }
}
