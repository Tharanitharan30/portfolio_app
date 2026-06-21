import 'package:flutter/material.dart';
import '../widgets/certificate_card.dart';
import '../data/portfolio_data.dart';

class CertificatesScreen extends StatelessWidget {
  const CertificatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0F172A),

      appBar: AppBar(
        backgroundColor: const Color(0xff0F172A),
        title: const Text("Certificates"),
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: PortfolioData.certificates.length,

        itemBuilder: (context, index) {

          final certificate =
              PortfolioData.certificates[index];

          return Padding(
            padding: const EdgeInsets.only(
              bottom: 20,
            ),

            child: CertificateCard(
              title: certificate["title"]!,
              organizer: certificate["organizer"]!,
              year: certificate["year"]!,
            ),
          );
        },
      ),
    );
  }
}