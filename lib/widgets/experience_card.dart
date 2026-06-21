import 'package:flutter/material.dart';

class ExperienceCard extends StatelessWidget {

  final String role;
  final String company;
  final String duration;
  final String description;

  const ExperienceCard({
    super.key,
    required this.role,
    required this.company,
    required this.duration,
    required this.description,
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

          Text(
            role,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            company,
            style: const TextStyle(
              color: Colors.cyan,
              fontSize: 16,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            duration,
            style: const TextStyle(
              color: Colors.white60,
            ),
          ),

          const SizedBox(height: 12),

          Text(
            description,
            style: const TextStyle(
              color: Colors.white70,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 12),

          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: const [

              Chip(
                label: Text("Python"),
              ),

              Chip(
                label: Text("ML"),
              ),

              Chip(
                label: Text("Gen AI"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}