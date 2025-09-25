import 'dart:async';
import 'package:flutter/material.dart';
import 'package:wing_man/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    // Simulate a delay for demonstration
    await Future.delayed(const Duration(seconds: 3), () {});

    // Navigate to the main screen, replacing the splash screen
    if (mounted) {
      // Check if the widget is still in the tree
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Set the color for the background behind the image, if the image has transparency
        // or doesn't cover the entire screen due to aspect ratio
        color: Colors.white,
        // The Image.asset widget will now fill the entire Container
        child: Image.asset(
          'assets/images/splash_logo.png', // The path to your logo
          fit:
              BoxFit.cover, // This is the key change to make it fit full screen
          width: double.infinity, // Ensure it expands to full width
          height: double.infinity, // Ensure it expands to full height
        ),
      ),
    );
  }
}
