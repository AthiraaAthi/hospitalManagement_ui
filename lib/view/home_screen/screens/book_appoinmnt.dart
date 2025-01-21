import 'package:flutter/material.dart';
import 'package:hospital_ui/utils/color_constant/color_constant.dart';

class BookAppointment extends StatefulWidget {
  const BookAppointment({super.key});

  @override
  State<BookAppointment> createState() => _BookAppointmentState();
}

class _BookAppointmentState extends State<BookAppointment> {
  final SizedBox space = SizedBox(
    height: 15,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.arrow_back, color: white),
        backgroundColor: mainGreen,
        title: Text('Appointment',
            style: TextStyle(
                color: white, fontSize: 19, fontWeight: FontWeight.w600)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Select a Doctor',
                hintStyle:
                    TextStyle(color: mainGreen, fontWeight: FontWeight.w400),
                suffixIcon: Icon(Icons.arrow_circle_down),
              ),
            ),
            space,
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'First Name',
                hintStyle:
                    TextStyle(color: mainGreen, fontWeight: FontWeight.w400),
              ),
            ),
            space,
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Last Name',
                hintStyle:
                    TextStyle(color: mainGreen, fontWeight: FontWeight.w400),
              ),
            ),
            space,
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Email',
                hintStyle:
                    TextStyle(color: mainGreen, fontWeight: FontWeight.w400),
              ),
            ),
            space,
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Phone',
                hintStyle:
                    TextStyle(color: mainGreen, fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text("Available Dates",
                style: TextStyle(
                    color: mainGreen,
                    fontSize: 16,
                    fontWeight: FontWeight.w400)),
          ],
        ),
      ),
    );
  }
}
