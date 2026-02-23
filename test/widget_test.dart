import 'package:flutter_test/flutter_test.dart';
import 'package:dart_meu_app_simples/main.dart';

void main() {
  testWidgets('App deve iniciar', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('Usuários'), findsOneWidget);
  });
}
