import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tharani_portfolio/app/app.dart';
import 'package:tharani_portfolio/core/constants/app_strings.dart';
import 'package:tharani_portfolio/data/certificates_data.dart';
import 'package:tharani_portfolio/screens/achievements/achievements_screen.dart';
import 'package:tharani_portfolio/screens/certifications/certificate_viewer_screen.dart';

void main() {
  testWidgets('shows splash before entering main navigation', (tester) async {
    await tester.pumpWidget(const TharaniPortfolioApp());

    expect(find.text(AppStrings.developerName), findsOneWidget);
    expect(find.text(AppStrings.splashSubtitle), findsOneWidget);

    await tester.pump(const Duration(seconds: 2));
    await tester.pumpAndSettle();

    expect(find.text(AppStrings.appName), findsOneWidget);
    expect(find.text('Home'), findsOneWidget);
    expect(find.text('About'), findsOneWidget);
    expect(find.text('Projects'), findsOneWidget);
    expect(find.text('Achievements'), findsOneWidget);
    expect(find.text('Contact'), findsOneWidget);
  });

  testWidgets('about tab opens and navigates to skills screen', (tester) async {
    await tester.pumpWidget(const TharaniPortfolioApp());
    await tester.pump(const Duration(seconds: 2));
    await tester.pumpAndSettle();

    await tester.tap(find.text('About'));
    await tester.pumpAndSettle();

    expect(find.text('About Me'), findsOneWidget);
    expect(find.text('Tharanitharan S'), findsOneWidget);

    await tester.tap(find.text('Explore Skills'));
    await tester.pumpAndSettle();

    expect(find.text('Technical Skills'), findsOneWidget);
    expect(find.text('Soft Skills'), findsOneWidget);
  });

  testWidgets('achievements tab shows tabs and certificate gallery', (
    tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(home: Scaffold(body: AchievementsScreen())),
    );
    await tester.pump(const Duration(milliseconds: 600));

    expect(find.text('Career Highlights'), findsOneWidget);
    expect(find.text('Experience'), findsOneWidget);
    expect(find.text('Certificates'), findsOneWidget);
    expect(find.text('Hackathons'), findsOneWidget);

    await tester.tap(find.text('Certificates'));
    await tester.pumpAndSettle();

    expect(find.text('Certifications'), findsOneWidget);
    expect(find.text('Flutter Development Foundations'), findsOneWidget);
  });

  testWidgets('certificate viewer shows certificate metadata', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: CertificateViewerScreen(
          certificate: CertificatesData.certificates.first,
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('Google Developers - 2026'), findsOneWidget);
  });
}
