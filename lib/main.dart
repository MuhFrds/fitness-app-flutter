import 'package:flutter/material.dart';
import 'package:flutter_fitness_application/home/home.dart';
import 'package:flutter_fitness_application/home/test.dart';
import 'package:flutter_fitness_application/register/form_name.dart';
import 'package:flutter_fitness_application/startscreen/startscreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: StartScreen(),
      // home: FormName(),
      home: MainHomeScreen(),
      // home: TestAja(),
    );
  }
}
