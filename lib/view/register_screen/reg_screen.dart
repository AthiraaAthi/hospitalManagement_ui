import 'package:flutter/material.dart';
import 'package:hospital_ui/utils/color_constant/color_constant.dart';
import 'package:hospital_ui/utils/img_constant/image_constant.dart';

class RegScreen extends StatelessWidget {
  const RegScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
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
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: "First Name",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: "Last Name",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: "Mobile",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: "Confirm Password",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 72,
                decoration: BoxDecoration(
                  color: black,
                  borderRadius: BorderRadius.circular(10),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
