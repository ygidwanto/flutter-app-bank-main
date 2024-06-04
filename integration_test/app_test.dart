import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:form_example/main.dart' as app;
import 'package:form_example/view_page.dart';     
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Form Submission Test', () {
    testWidgets('Verify form submission and navigation to ViewPage', (WidgetTester tester) async {
      // Menjalankan aplikasi
      app.main();
      await tester.pumpAndSettle();

      // Mengisi form
      await tester.enterText(find.byType(TextField).at(0), 'John Doe');
      await Future.delayed(const Duration(seconds: 1));

      await tester.enterText(find.byType(TextField).at(1), '123456789');
      await Future.delayed(const Duration(seconds: 1));

      await tester.enterText(find.byType(TextField).at(2), '01-01-1990');
      await Future.delayed(const Duration(seconds: 1));

      await tester.enterText(find.byType(TextField).at(3), 'Male');
      await Future.delayed(const Duration(seconds: 1));

      await tester.enterText(find.byType(TextField).at(4), '5551234567');
      await Future.delayed(const Duration(seconds: 1));

      await tester.enterText(find.byType(TextField).at(5), 'Bachelor\'s Degree');
      await Future.delayed(const Duration(seconds: 1));

      await tester.enterText(find.byType(TextField).at(6), 'Christianity');
      await Future.delayed(const Duration(seconds: 1));

      await tester.enterText(find.byType(TextField).at(7), 'Software Engineer');
      await Future.delayed(const Duration(seconds: 1));

      await tester.enterText(find.byType(TextField).at(8), '123 Main St');
      await Future.delayed(const Duration(seconds: 1));

      await tester.enterText(find.byType(TextField).at(9), 'Savings');
      await Future.delayed(const Duration(seconds: 1));

      // Mengetuk tombol submit
      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();

      // Memastikan navigasi ke ViewPage
      expect(find.byType(ViewPage), findsOneWidget);
    });
  });
}
