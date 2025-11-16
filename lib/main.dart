import 'package:flutter/material.dart';
import 'item_model.dart';
import 'list_screen.dart';

void main() {
  // Entry point of the Flutter app.
  runApp(const MyApp());
}

/// Root widget of the app.
/// Uses MaterialApp and sets the initial screen to ListScreen.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EECS 4443 Lab 5',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Basic theming for consistent styles.
        primarySwatch: Colors.indigo,
        scaffoldBackgroundColor: Colors.grey[100],
        cardTheme: CardThemeData(
          elevation: 3,
          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      // Initial screen is the main list screen.
      home: ListScreen(items: sampleItems),
    );
  }
}
