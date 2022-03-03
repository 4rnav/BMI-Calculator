import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/main.dart';
import 'package:bmi_calculator/screens/result_page.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.buttonLabel, required this.onPress});

  final void Function() onPress;
  final String buttonLabel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(2.0),
        child: Center(
          child: Text(
            buttonLabel,
            style: kLargeButtonTextStyle,
          ),
        ),
        // color: bottomBarColor,
        margin: EdgeInsets.all(10.0),
        height: bottomBarHeight,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0), color: bottomBarColor),
      ),
    );
  }
}