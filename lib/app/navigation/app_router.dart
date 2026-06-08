import 'package:flutter/material.dart';

import '../../features/about/presentation/screens/about_screen.dart';
import '../../features/contact/presentation/screens/contact_screen.dart';
import '../../features/home/presentation/screens/home_screen.dart';
import '../../features/projects/presentation/screens/projects_screen.dart';
import 'app_routes.dart';

final class AppRouter {
  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final Widget page = switch (settings.name) {
      AppRoutes.home => const HomeScreen(),
      AppRoutes.about => const AboutScreen(),
      AppRoutes.projects => const ProjectsScreen(),
      AppRoutes.contact => const ContactScreen(),
      _ => const HomeScreen(),
    };

    return MaterialPageRoute<void>(builder: (_) => page, settings: settings);
  }
}
