import 'package:flutter/material.dart';
import 'package:hospital_ui/utils/color_constant/color_constant.dart';
import 'package:hospital_ui/utils/img_constant/image_constant.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  final SizedBox space = SizedBox(
    height: 20,
  );
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
              children: [
                RichText(
                    text: TextSpan(
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
                  "MANAGER",
                  style: TextStyle(
                    fontSize: 17,
                    letterSpacing: 14,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(ImageConstant.aboutUsDoc),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
