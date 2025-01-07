import 'package:flutter/material.dart';
import 'package:hospital_ui/view/splash/splash_screen.dart';

void main() {
  runApp(HospitalApp());
}

class HospitalApp extends StatelessWidget {
  const HospitalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
