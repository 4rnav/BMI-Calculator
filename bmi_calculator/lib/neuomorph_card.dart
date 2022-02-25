// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NeumorphCard extends StatelessWidget {
  // const NeumorphSlate({
  //   Key? key,
  // }) : super(key: key);
  // ignore: prefer_const_constructors_in_immutables
  NeumorphCard({this.cardChild});

  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(20),
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
          ]),
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