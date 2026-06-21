import 'package:flutter/material.dart';
import '../widgets/project_card.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0F172A),

      appBar: AppBar(
        backgroundColor: const Color(0xff0F172A),
        title: const Text("Projects"),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [

          ProjectCard(
            title: "AquaSense",
            description:
                "Smart water quality monitoring system with real-time alerts and ML anomaly detection.",
            technologies: [
              "Flutter",
              "Django",
              "ML"
            ],
          ),

          SizedBox(height: 20),

          ProjectCard(
            title: "TaxPal",
            description:
                "Tax calculator and expense management platform for freelancers.",
            technologies: [
              "React",
              "Express",
              "MongoDB"
            ],
          ),

          SizedBox(height: 20),

          ProjectCard(
            title: "Movie Recommendation System",
            description:
                "AI-powered recommendation engine using collaborative filtering.",
            technologies: [
              "React",
              "Django",
              "PostgreSQL"
            ],
          ),

          SizedBox(height: 20),

          ProjectCard(
            title: "Brain Tumor Classifier",
            description:
                "MRI image classification using EfficientNet-B4.",
            technologies: [
              "Python",
              "TensorFlow",
              "OpenCV"
            ],
          ),

        ],
      ),
    );
  }
}