// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';

// import 'package:fluttertest/main.dart';
import 'dart:io';

void main() {
  // testWidgets('Counter increments smoke test', (WidgetTester tester) async {
  //   // Build our app and trigger a frame.
  //   await tester.pumpWidget(const MyApp());

  //   // Verify that our counter starts at 0.
  //   expect(find.text('0'), findsOneWidget);
  //   expect(find.text('1'), findsNothing);

  //   // Tap the '+' icon and trigger a frame.
  //   await tester.tap(find.byIcon(Icons.add));
  //   await tester.pump();

  //   // Verify that our counter has incremented.
  //   expect(find.text('0'), findsNothing);
  //   expect(find.text('1'), findsOneWidget);
  // });

  // Meminta input banyaknya hari dari user
  print("Berapa banyak hari kost akan disewa?");
  int hari = int.parse(stdin.readLineSync()!);

  // Menghitung biaya sewa kost
  int biaya = 0;
  if (hari >= 30) {
    biaya += 180000 * (hari ~/ 30);
    hari %= 30;
  }
  if (hari >= 7) {
    biaya += 50000 * (hari ~/ 7);
    hari %= 7;
  }
  biaya += 10000 * hari;

  // Menampilkan hasilnya
  print("Biaya sewa kost adalah: $biaya");
}
