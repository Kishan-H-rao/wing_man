// main.dart
import 'package:flutter/material.dart';
import 'package:wing_man/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // The initial screen of your app
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
