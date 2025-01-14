import 'package:flutter/material.dart';
import 'package:hospital_ui/utils/color_constant/color_constant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
            text: TextSpan(
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          children: [
            TextSpan(
              text: "HOS",
              style: TextStyle(color: black),
            ),
          ],
        )),
      ),
    );
  }
}
