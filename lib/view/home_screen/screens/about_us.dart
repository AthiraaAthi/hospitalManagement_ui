import 'package:flutter/material.dart';
import 'package:hospital_ui/utils/color_constant/color_constant.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        toolbarHeight: 100,
        leading: Icon(
          Icons.menu,
          size: 30,
          color: mainGreen,
        ),
        centerTitle: true,
        title: Row(
          children: [],
        ),
      ),
    );
  }
}
