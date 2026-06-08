import 'package:flutter/material.dart';

import '../../../../core/widgets/app_section_placeholder.dart';
import '../../../dashboard/presentation/screens/portfolio_shell.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const PortfolioShell(
      currentIndex: 1,
      child: AppSectionPlaceholder(
        eyebrow: 'Feature',
        title: 'About module ready',
        description:
            'Keep profile summaries, timeline sections, and biography components in this feature when you begin adding real content.',
      ),
    );
  }
}
