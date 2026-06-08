import 'package:flutter/material.dart';

import '../../../../app/navigation/app_routes.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/theme/app_spacing.dart';

class PortfolioShell extends StatelessWidget {
  const PortfolioShell({
    required this.currentIndex,
    required this.child,
    super.key,
  });

  final int currentIndex;
  final Widget child;

  static const _destinations = <({String route, String label, IconData icon})>[
    (route: AppRoutes.home, label: 'Home', icon: Icons.home_rounded),
    (route: AppRoutes.about, label: 'About', icon: Icons.person_rounded),
    (
      route: AppRoutes.projects,
      label: 'Projects',
      icon: Icons.grid_view_rounded,
    ),
    (route: AppRoutes.contact, label: 'Contact', icon: Icons.mail_rounded),
  ];

  void _onDestinationSelected(BuildContext context, int index) {
    final route = _destinations[index].route;
    if (ModalRoute.of(context)?.settings.name == route) {
      return;
    }

    Navigator.of(context).pushReplacementNamed(route);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppStrings.appName, style: theme.textTheme.titleLarge),
            Text(AppStrings.appTagline, style: theme.textTheme.bodySmall),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.medium,
            AppSpacing.small,
            AppSpacing.medium,
            0,
          ),
          child: child,
        ),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        onDestinationSelected: (index) =>
            _onDestinationSelected(context, index),
        destinations: _destinations
            .map(
              (item) => NavigationDestination(
                icon: Icon(item.icon),
                label: item.label,
              ),
            )
            .toList(),
      ),
    );
  }
}
