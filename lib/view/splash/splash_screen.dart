import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hospital_ui/utils/img_constant/image_constant.dart';
import 'package:hospital_ui/view/register_screen/reg_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 3),
      () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => RegScreen(),
        ));
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.yellow,
                image: DecorationImage(
                  image: AssetImage(ImageConstant.logo),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "HOSPITAL",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            Text(
              "Manager",
              style: TextStyle(
                fontSize: 20,
                letterSpacing: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
