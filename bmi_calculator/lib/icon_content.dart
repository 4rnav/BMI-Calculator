// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IconContent extends StatelessWidget {
  IconContent({required this.icon, required this.label, required this.iconColor});

  final IconData icon;
  final String label;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 80.0,
          color: iconColor,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          label,
          style: GoogleFonts.getFont('Poppins', fontWeight: FontWeight.bold, color: Color.fromARGB(255, 133, 133, 133), fontSize: 20.0)
        ),
      ],
    );
  }
}