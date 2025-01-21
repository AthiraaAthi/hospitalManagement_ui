import 'package:flutter/material.dart';
import 'package:hospital_ui/utils/color_constant/color_constant.dart';

class BookAppointment extends StatelessWidget {
  const BookAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, color: white),
        backgroundColor: mainGreen,
        title: Text('Appointment',
            style: TextStyle(
                color: white, fontSize: 18, fontWeight: FontWeight.w700)),
      ),
    );
  }
}
