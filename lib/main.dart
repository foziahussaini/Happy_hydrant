import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(WaterApp());
}

class WaterApp extends StatelessWidget {
  const WaterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Water Intake Calculator Challenge",
      // Define a custom Light and Blue Theme
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        primaryColor: Colors.blueAccent,
        // Global color scheme for the app
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueAccent,
          primary: Colors.blueAccent,
          secondary: Colors.lightBlueAccent,
          surface: Colors.white,
        ),

        // Style for Text
        textTheme: const TextTheme(
          displayLarge: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(color: Colors.black87),
        ),
      ),
      home: InputPage(),
    );
  }
}
