import 'package:flutter/material.dart';
import 'package:hospital_ui/utils/color_constant/color_constant.dart';

class DoctorListScreen extends StatefulWidget {
  const DoctorListScreen({super.key});

  @override
  State<DoctorListScreen> createState() => _DoctorListScreenState();
}

class _DoctorListScreenState extends State<DoctorListScreen> {
  List<String> docNames = [
    "Dr.Ryle kincaid",
    "Dr. Alex Volkov",
    "Dr.Rhys Larsen",
    "Dr. Josh Chen",
    "Dr.Christain Harper",
  ];
  List<String> position = [
    "Assistant Professor",
    "Assistant Professor",
    "Assistant Professor",
    "Assistant Professor",
    "Assistant Professor",
  ];
  List<String> docSpeciality = [
    "Neuromedicine",
    "Neurosurgeon",
    "Gynae & Obs",
    "Brain Tumor",
    "Neurologist",
  ];
  List<String> docQualification = [
    "MD,M.PHIL,PHD",
    "MD,M.PHIL,PHD",
    "GYNAECOLOGY",
    "MD,M.PHIL,PHD",
    "MD,M.PHIL,PHD",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainGreen,
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
          color: white,
        ),
        title: Text('Doctor List',
            style: TextStyle(
                color: white, fontSize: 19, fontWeight: FontWeight.w600)),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Doctors, clinics, lab',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: docNames.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150,
                    width: 70,
                    decoration: BoxDecoration(
                      color: white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: mainGreen,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  docNames[index],
                                  style: TextStyle(
                                      color: black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  docSpeciality[index],
                                  style: TextStyle(
                                      color: black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  'MBBS, MD - Cardiology',
                                  style: TextStyle(
                                      color: black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
