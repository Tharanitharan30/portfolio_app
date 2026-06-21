import 'package:flutter/material.dart';
import '../widgets/experience_card.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0F172A),

      appBar: AppBar(
        backgroundColor: const Color(0xff0F172A),
        title: const Text("Experience"),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [

          ExperienceCard(
            role: "Gen AI Developer Intern",
            company: "STASIS ARTIS",
            duration: "Present",
            description:
                "Building AI-powered solutions using Generative AI and Machine Learning.",
          ),

          SizedBox(height: 20),

          ExperienceCard(
            role: "ML Engineer Intern",
            company: "Nativeva",
            duration: "1 Month",
            description:
                "Worked on machine learning and computer vision projects.",
          ),

          SizedBox(height: 20),

          ExperienceCard(
            role: "Full Stack Developer Intern",
            company: "Infosys",
            duration: "3 Months",
            description:
                "Built full-stack applications using React, Express.js and MongoDB.",
          ),
        ],
      ),
    );
  }
}