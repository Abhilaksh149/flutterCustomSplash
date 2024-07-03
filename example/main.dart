import 'package:flutter/material.dart';
import 'package:flutter_custom_splash_screen/flutter_custom_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(
        bgImage: 'assets/bg_image.png',
        logoImage: 'assets/logo.png',
        logoHeight: 90,
        logoWidth: 90,
        logoColor: Colors.blue,
        logoBgColor: Colors.black,
        textColor: Colors.black,),
    );
  }
}