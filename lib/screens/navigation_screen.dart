import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

import 'home_screen.dart';
import 'skills_screen.dart';
import 'projects_screen.dart';
import 'certificates_screen.dart';
import 'experience_screen.dart';
import 'education_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() =>
      _NavigationScreenState();
}

class _NavigationScreenState
    extends State<NavigationScreen> {

  int currentIndex = 0;

  final List<Widget> screens = [
    const HomeScreen(),
    const SkillsScreen(),
    const ProjectsScreen(),
    const CertificatesScreen(),
    const ExperienceScreen(),
    const EducationScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],

      bottomNavigationBar: StylishBottomBar(
        currentIndex: currentIndex,

        option: BubbleBarOptions(
          barStyle: BubbleBarStyle.horizontal,
          bubbleFillStyle: BubbleFillStyle.fill,
          opacity: 0.3,
        ),

        onTap: (index) {
          setState(() {
            currentIndex = index!;
          });
        },

        items: [

          BottomBarItem(
            icon: const Icon(Icons.home_outlined),
            selectedIcon: const Icon(Icons.home),
            title: const Text("Home"),
          ),

          BottomBarItem(
            icon: const Icon(Icons.code_outlined),
            selectedIcon: const Icon(Icons.code),
            title: const Text("Skills"),
          ),

          BottomBarItem(
            icon: const Icon(Icons.rocket_launch_outlined),
            selectedIcon: const Icon(Icons.rocket_launch),
            title: const Text("Projects"),
          ),

          BottomBarItem(
            icon: const Icon(Icons.workspace_premium_outlined),
            selectedIcon: const Icon(Icons.workspace_premium),
            title: const Text("Certificates"),
          ),

          BottomBarItem(
            icon: const Icon(Icons.work_outline),
            selectedIcon: const Icon(Icons.work),
            title: const Text("Experience"),
          ),

          BottomBarItem(
            icon: const Icon(Icons.school_outlined),
            selectedIcon: const Icon(Icons.school),
            title: const Text("Education"),
          ),
        ],
      ),
    );
  }
}