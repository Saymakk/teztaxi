import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:teztaxi/screens/auth/auth_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: 'assets/images/logo.png',
        splashIconSize: 40,
        nextScreen: AuthScreen(),
        splashTransition: SplashTransition.fadeTransition,
      ),
    );
  }
}
