import 'package:flutter/material.dart';

const bottomBarHeight = 60.0;
const bottomBarColor = Colors.lightBlue;
const int kMaxHeight = 220;
const int kMinHeight = 100;

const String kOverweightResult = 'You have a higher than normal body weight. Try to exercise more.';
const String kUnderweightResult = 'You have a lower than normal body weight. You should eat a bit more.';
const String kNormalweightResult = 'You have a normal body weight. Good job!';


const TextStyle kLargeButtonTextStyle = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.w600,
  fontFamily: 'Poppins',
  color: Color.fromARGB(255, 255, 255, 255),
  letterSpacing: 5.0,
);

const TextStyle kNumberTextStyle = TextStyle(
  fontSize: 35.0,
  fontWeight: FontWeight.w900,
  fontFamily: 'Poppins',
  color: Color.fromRGBO(55, 71, 79, 1),
);

const TextStyle kLabelTextStyle = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold,
    color: Color.fromRGBO(55, 71, 79, 1),
    fontSize: 20.0);

const TextStyle kTitleTextStyle = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold,
    color: Color.fromRGBO(55, 71, 79, 1),
    fontSize: 40.0);

const TextStyle kResultTextStyle = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 25.0,
    fontWeight: FontWeight.bold,
    color: Colors.green,
    letterSpacing: 3.0,);

const TextStyle kBMITextStyle = TextStyle(
  fontFamily: 'Poppins',
  fontSize: 80.0,
  fontWeight: FontWeight.bold,
  color: Color.fromRGBO(55, 71, 79, 1),
);

const TextStyle kResultBodyTextStyle = TextStyle(
  fontFamily: 'Poppins',
  fontSize: 18.0,
  fontWeight: FontWeight.normal,
  color: Color.fromARGB(255, 86, 114, 128),
);
