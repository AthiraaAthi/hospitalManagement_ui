import 'package:flutter/material.dart';
import 'package:hospital_ui/utils/color_constant/color_constant.dart';
import 'package:hospital_ui/utils/img_constant/image_constant.dart';

class AppointmentListScreen extends StatefulWidget {
  const AppointmentListScreen({super.key});

  @override
  State<AppointmentListScreen> createState() => _AppointmentListScreenState();
}

class _AppointmentListScreenState extends State<AppointmentListScreen> {
  List<String> docNAme = [];
  List<String> docSpeciality = [];
  List<String> docAID = [];
  List<String> docSchedule = [];
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
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: mainGreen),
              ),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: mainGreen,
                      image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.ryle,
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dr.Ryle Kincaid',
                        style: TextStyle(
                            color: const Color.fromARGB(255, 89, 88, 88),
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Neuroligist',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'AID: AZC3718191191',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'Schedule: 12:00:00 15:00:00',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
