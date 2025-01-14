import 'package:flutter/material.dart';
import 'package:hospital_ui/utils/color_constant/color_constant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        centerTitle: true,
        title: Column(
          children: [
            RichText(
                text: TextSpan(
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: "HOS",
                  style: TextStyle(color: black),
                ),
                TextSpan(
                  text: "PI",
                  style: TextStyle(color: mainGreen),
                ),
                TextSpan(
                  text: "TAL",
                  style: TextStyle(color: black),
                ),
              ],
            )),
            Text(
              "Manager",
              style: TextStyle(
                fontSize: 17,
                letterSpacing: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
