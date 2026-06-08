import 'package:flutter_test/flutter_test.dart';
import 'package:tharani_portfolio/app/app.dart';

void main() {
  testWidgets('renders portfolio app shell', (tester) async {
    await tester.pumpWidget(const TharaniPortfolioApp());
    await tester.pumpAndSettle();

    expect(find.text('Tharani Portfolio'), findsOneWidget);
    expect(find.text('Home'), findsOneWidget);
    expect(find.text('About'), findsOneWidget);
    expect(find.text('Projects'), findsOneWidget);
    expect(find.text('Contact'), findsOneWidget);
  });
}
