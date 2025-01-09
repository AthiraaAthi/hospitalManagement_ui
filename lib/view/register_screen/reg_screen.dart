import 'package:flutter/material.dart';
import 'package:hospital_ui/utils/img_constant/image_constant.dart';

class RegScreen extends StatelessWidget {
  const RegScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
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
          ],
        ),
      ),
    );
  }
}
