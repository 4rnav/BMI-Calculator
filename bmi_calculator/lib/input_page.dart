// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

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
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: NeumorphSlate(),
                ),
                Expanded(child: NeumorphSlate()),
              ],
            ),
          ),
          Expanded(child: NeumorphSlate()),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: NeumorphSlate()),
                Expanded(child: NeumorphSlate()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NeumorphSlate extends StatelessWidget {
  const NeumorphSlate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
        // ignore: prefer_const_literals_to_create_immutables
        boxShadow: [
        BoxShadow(
          color: (Colors.grey[500])!,
          offset: Offset(4, 4),
          blurRadius: 15,
          spreadRadius: 1,
        ),
        BoxShadow(
          color: Colors.white,
          offset: Offset(-4, -4),
          blurRadius: 15,
          spreadRadius: 1,
        ),
      ]
      ),
    );
  }
}

// body: GestureDetector(
//           onTapDown: (_) {
//             setState(() {
//               _isElevated = !_isElevated;
//             });
//           },
//           onTapUp: (_) {
//             setState(() {
//               _isElevated = !_isElevated;
//             });
//           },
//           child: AnimatedContainer(
//             duration: const Duration(
//               milliseconds: 100,
//             ),
//             height: 200,
//             width: 170,
//             decoration: BoxDecoration(
//               color: Colors.grey[300],
//               borderRadius: BorderRadius.circular(10),
//               boxShadow: _isElevated
//                   ? [
//                       const BoxShadow(
//                         color: Colors.grey,
//                         offset: Offset(4, 4),
//                         blurRadius: 15,
//                         spreadRadius: 1,
//                       ),
//                       const BoxShadow(
//                         color: Colors.white,
//                         offset: Offset(-4, -4),
//                         blurRadius: 15,
//                         spreadRadius: 1,
//                       ),
//                     ]
//                   : null,
//             ),
//           ),
//         ),