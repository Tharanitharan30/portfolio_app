import 'package:flutter/material.dart';

import '../../models/project.dart';
import '../../screens/projects/project_detail_screen.dart';
import '../../screens/navigation/main_navigation_screen.dart';
import '../../screens/skills/skills_screen.dart';
import '../../screens/splash/splash_screen.dart';
import 'app_routes.dart';

final class AppRouter {
  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final Route<dynamic> route = switch (settings.name) {
      AppRoutes.splash => MaterialPageRoute<void>(
          builder: (_) => const SplashScreen(),
          settings: settings,
        ),
      AppRoutes.main => MaterialPageRoute<void>(
          builder: (_) => const MainNavigationScreen(),
          settings: settings,
        ),
      AppRoutes.skills => MaterialPageRoute<void>(
          builder: (_) => const SkillsScreen(),
          settings: settings,
        ),
      AppRoutes.projectDetails => _buildProjectDetailRoute(settings),
      _ => MaterialPageRoute<void>(
          builder: (_) => const SplashScreen(),
          settings: settings,
        ),
    };

    return route;
  }

  static Route<dynamic> _buildProjectDetailRoute(RouteSettings settings) {
    final project = settings.arguments as PortfolioProject;

    return PageRouteBuilder<void>(
      settings: settings,
      pageBuilder: (_, animation, secondaryAnimation) => ProjectDetailScreen(
        project: project,
      ),
      transitionsBuilder: (_, animation, secondaryAnimation, child) {
        final fadeAnimation = CurvedAnimation(
          parent: animation,
          curve: Curves.easeOut,
        );

        final slideAnimation = Tween<Offset>(
          begin: const Offset(0.04, 0.08),
          end: Offset.zero,
        ).animate(
          CurvedAnimation(
            parent: animation,
            curve: Curves.easeOutCubic,
          ),
        );

        return FadeTransition(
          opacity: fadeAnimation,
          child: SlideTransition(position: slideAnimation, child: child),
        );
      },
    );
  }
}
