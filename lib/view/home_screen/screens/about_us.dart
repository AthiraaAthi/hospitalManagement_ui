import 'package:flutter/material.dart';
import 'package:hospital_ui/utils/color_constant/color_constant.dart';
import 'package:hospital_ui/utils/img_constant/image_constant.dart';

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
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImageConstant.logo),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: [],
            ),
          ],
        ),
      ),
    );
  }
}
