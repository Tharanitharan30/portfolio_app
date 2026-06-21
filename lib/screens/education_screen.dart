import 'package:flutter/material.dart';
import '../widgets/education_card.dart';

class EducationScreen extends StatelessWidget {
  const EducationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0F172A),

      appBar: AppBar(
        backgroundColor: const Color(0xff0F172A),
        title: const Text("Education"),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [

          EducationCard(
            institution:
                "Karpagam Academy of Higher Education",
            degree:
                "B.E Computer Science and Engineering",
            duration:
                "2024 - 2028",
          ),

        ],
      ),
    );
  }
}