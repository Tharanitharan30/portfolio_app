import 'package:flutter/material.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Skills"),
      ),
      body: Wrap(
        spacing: 10,
        children: const [
          Chip(label: Text("Flutter")),
          Chip(label: Text("React")),
          Chip(label: Text("Django")),
          Chip(label: Text("Python")),
        ],
      ),
    );
  }
}