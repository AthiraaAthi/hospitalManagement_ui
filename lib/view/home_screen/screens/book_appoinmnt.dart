import 'package:flutter/material.dart';
import 'package:hospital_ui/utils/color_constant/color_constant.dart';
import 'package:hospital_ui/view/home_screen/screens/doc_list.dart';

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
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, color: white)),
        backgroundColor: mainGreen,
        title: Text('Appointment',
            style: TextStyle(
                color: white, fontSize: 19, fontWeight: FontWeight.w600)),
      ),
      body: SingleChildScrollView(
        child: Padding(
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
                  suffixIcon: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DoctorListScreen()));
                      },
                      child: Icon(Icons.arrow_circle_down)),
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
              space,
              Text("Available Times / Serial No",
                  style: TextStyle(
                      color: mainGreen,
                      fontSize: 16,
                      fontWeight: FontWeight.w400)),
              space,
              Text("Problems",
                  style: TextStyle(
                      color: mainGreen,
                      fontSize: 16,
                      fontWeight: FontWeight.w400)),
              space,
              TextField(
                maxLines: 5,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  labelText: "Enter Your Problem",
                  border: OutlineInputBorder(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
