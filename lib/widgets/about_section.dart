import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(
            "About Me",
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          

          const SizedBox(height: 15),

          Text(
            "I'm a Full Stack Developer and ML Engineer who loves building end-to-end systems from mobile apps to AI-powered backends.",
            style: GoogleFonts.poppins(
              color: Colors.white70,
              fontSize: 16,
              height: 1.6,
            ),
          ),

          SizedBox(width: 10),

          Text(
            "Coimbatore, India",
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}