import 'package:flutter/material.dart';

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
            ),
          ],
        )),
      ),
    );
  }
}
