import 'package:flutter/material.dart';
import 'package:hospital_ui/utils/color_constant/color_constant.dart';

class DocumentsScreen extends StatelessWidget {
  const DocumentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, color: white)),
        backgroundColor: mainGreen,
        title: Text('Documents',
            style: TextStyle(
                color: white, fontSize: 20, fontWeight: FontWeight.w600)),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 50, left: 10, right: 10, bottom: 30),
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(border: Border.all(color: black)),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 30,
                    width: 300,
                    decoration: BoxDecoration(
                      color: mainGreen,
                    ),
                    child: Center(
                      child: Text("Patient ID :RCVKAJNAHNAJNA",
                          style: TextStyle(
                              color: white,
                              fontSize: 13,
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Dr.Ryle Kincaid",
                      style: TextStyle(
                          color: black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
