import 'package:flutter/material.dart';

import '../../../../core/widgets/app_section_placeholder.dart';
import '../../../dashboard/presentation/screens/portfolio_shell.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const PortfolioShell(
      currentIndex: 0,
      child: AppSectionPlaceholder(
        eyebrow: 'Foundation',
        title: 'Home module scaffolded',
        description:
            'This screen is intentionally a placeholder so portfolio content can be added later without changing the navigation or theme architecture.',
      ),
    );
  }
}
