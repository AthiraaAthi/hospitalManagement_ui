import 'package:flutter/material.dart';
import 'package:hospital_ui/utils/color_constant/color_constant.dart';

class AppointmentListScreen extends StatelessWidget {
  const AppointmentListScreen({super.key});

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
        title: Text('Appointment List',
            style: TextStyle(
                color: white, fontSize: 20, fontWeight: FontWeight.w600)),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
        child: Column(
          children: [
            Container(
              height: 30,
              width: double.infinity,
              decoration: BoxDecoration(
                //color: const Color.fromARGB(255, 215, 214, 214),
                border: Border.all(color: mainGreen),
              ),
              child: Center(
                  child: Text(
                "Tuesday 2025-02-06 | SN :4",
                style: TextStyle(color: const Color.fromARGB(255, 89, 88, 88)),
              )),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(color: mainGreen),
              ),
              child: Row(),
            )
          ],
        ),
      ),
    );
  }
}
