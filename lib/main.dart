import 'package:flutter/material.dart';
import 'package:flutter_fitness_application/welcome%20screen/welcome_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WelcomeScreen(),
    );
  }
}
