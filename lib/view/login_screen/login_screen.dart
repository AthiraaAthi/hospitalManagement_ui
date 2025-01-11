import 'package:flutter/material.dart';
import 'package:hospital_ui/utils/img_constant/image_constant.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImageConstant.logo),
                  fit: BoxFit.cover,
                ),
              ),
            ),
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
