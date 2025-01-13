import 'package:flutter/material.dart';
import 'package:hospital_ui/utils/color_constant/color_constant.dart';
import 'package:hospital_ui/utils/img_constant/image_constant.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              SizedBox(height: 100),
              TextField(
                decoration: InputDecoration(
                  fillColor: const Color.fromARGB(255, 230, 228, 228),
                  filled: true,
                  hintText: "Email",
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  fillColor: const Color.fromARGB(255, 230, 228, 228),
                  filled: true,
                  hintText: "Password",
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
              SizedBox(height: 50),
              Container(
                width: double.infinity,
                height: 65,
                decoration: BoxDecoration(
                  color: black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
