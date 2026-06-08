import 'package:flutter/material.dart';

import '../../../../core/widgets/app_section_placeholder.dart';
import '../../../dashboard/presentation/screens/portfolio_shell.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const PortfolioShell(
      currentIndex: 2,
      child: AppSectionPlaceholder(
        eyebrow: 'Feature',
        title: 'Projects module ready',
        description:
            'Project cards, case studies, filters, and media galleries can be introduced here while preserving the shared app foundation.',
      ),
    );
  }
}
