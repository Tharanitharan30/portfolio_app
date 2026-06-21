import 'package:flutter/material.dart';
import 'liquid_glass_card.dart';

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final List<String> technologies;

  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.technologies,
  });

  @override
  Widget build(BuildContext context) {
    return LiquidGlassCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          Text(
            description,
            style: const TextStyle(
              color: Colors.white70,
              height: 1.5,
            ),
          ),

          const SizedBox(height: 15),

          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: technologies
                .map(
                  (tech) => Chip(
                    label: Text(tech),
                  ),
                )
                .toList(),
          ),

          const SizedBox(height: 15),

          Row(
            children: [

              ElevatedButton(
                onPressed: () {},
                child: const Text("GitHub"),
              ),

              const SizedBox(width: 10),

              OutlinedButton(
                onPressed: () {},
                child: const Text("Details"),
              ),

            ],
          ),
        ],
      ),
    );
  }
}