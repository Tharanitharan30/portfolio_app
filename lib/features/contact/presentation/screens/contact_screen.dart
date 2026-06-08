import 'package:flutter/material.dart';

import '../../../../core/widgets/app_section_placeholder.dart';
import '../../../dashboard/presentation/screens/portfolio_shell.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const PortfolioShell(
      currentIndex: 3,
      child: AppSectionPlaceholder(
        eyebrow: 'Feature',
        title: 'Contact module ready',
        description:
            'Forms, call-to-action blocks, social links, and communication preferences can live here once portfolio data is introduced.',
      ),
    );
  }
}
