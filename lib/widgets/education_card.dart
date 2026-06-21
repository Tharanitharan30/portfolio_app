import 'package:flutter/material.dart';

class EducationCard extends StatelessWidget {

  final String institution;
  final String degree;
  final String duration;

  const EducationCard({
    super.key,
    required this.institution,
    required this.degree,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(20),
      ),

      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,

        children: [

          const Icon(
            Icons.school,
            color: Colors.cyan,
            size: 40,
          ),

          const SizedBox(height: 15),

          Text(
            institution,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          Text(
            degree,
            style: const TextStyle(
              color: Colors.white70,
            ),
          ),

          const SizedBox(height: 10),

          Text(
            duration,
            style: const TextStyle(
              color: Colors.cyan,
            ),
          ),
        ],
      ),
    );
  }
}