import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:data_crypto/main.dart'; // Pastikan nama dan jalur sesuai dengan proyek Anda

void main() {
  testWidgets('Crypto List Page loads and displays data',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify CircularProgressIndicator is shown initially (data is loading).
    expect(find.byType(CircularProgressIndicator), findsOneWidget);

    // Simulate a delay for data to load.
    await tester.pump(const Duration(seconds: 2));

    // Wait for the FutureBuilder to complete and display the data.
    await tester.pumpAndSettle();

    // Check if the ListView is displayed after data is loaded.
    expect(find.byType(ListView), findsOneWidget);

    // Check if at least one ListTile is displayed (assuming API returns data).
    expect(find.byType(ListTile), findsWidgets);
  });
}
