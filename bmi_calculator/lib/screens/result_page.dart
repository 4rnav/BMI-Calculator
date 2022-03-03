// ignore_for_file: prefer_const_literals_to_create_immutables



import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import '../components/neuomorph_card.dart';
import 'package:flutter/material.dart';
import '../components/bottom_button.dart';
import '../components/round_icon_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({required this.bmiInterpretation, required this.bmiResult, required this.bmiResultText});

  final String bmiResult;
  final String bmiInterpretation;
  final String bmiResultText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f3f8),
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
          style: TextStyle(
              color: Colors.blueGrey.shade700,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.grey[300],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(30.0),
              child: Text(
                'Your Results',
                style: kTitleTextStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: NeumorphCard(
              padding: 10.0,
              cardColor: Color(0xFFEEEEEE),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    this.bmiResultText,
                    style: kResultTextStyle,
                  ),
                  Text(
                    this.bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    this.bmiInterpretation,
                    style: kResultBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: BottomButton(
              onPress: () {
                Navigator.pop(
                  context,
                );
              },
              buttonLabel: 'RE-CALCULATE',
            ),
          ),
        ],
      ),
    );
  }
}
