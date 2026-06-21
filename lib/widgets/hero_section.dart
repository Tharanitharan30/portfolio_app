import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroSection extends StatelessWidget {
  final String name;
  final String title;

  const HeroSection({
    super.key,
    required this.name,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 60,
          child: Icon(
            Icons.person,
            size: 60,
          ),
        ),

        SizedBox(height: 20),

        Text(
          name,
          style: GoogleFonts.poppins(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),

        SizedBox(height: 10),

        Text(title),
      ],
    );
  }
}