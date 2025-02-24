import 'package:flutter/material.dart';
import 'package:hospital_ui/utils/color_constant/color_constant.dart';
import 'package:hospital_ui/utils/img_constant/image_constant.dart';

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
  List<String> docImgs = [
    ImageConstant.ryle,
    ImageConstant.alex,
    ImageConstant.rhys,
    ImageConstant.josh,
    ImageConstant.christain,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainGreen,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: white,
          ),
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
                    height: 200,
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
                                  image: DecorationImage(
                                    image: AssetImage(docImgs[index]),
                                    fit: BoxFit.cover,
                                  ),
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
                                  position[index],
                                  style: TextStyle(
                                      color: black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  docSpeciality[index],
                                  style: TextStyle(
                                      color: black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  docQualification[index],
                                  style: TextStyle(
                                      color: black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                  style: ButtonStyle(
                                      shadowColor:
                                          WidgetStatePropertyAll(Colors.grey),
                                      shape: WidgetStatePropertyAll(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10))),
                                      backgroundColor: WidgetStatePropertyAll(
                                          const Color.fromARGB(
                                              255, 219, 217, 217))),
                                  onPressed: () {},
                                  child: Text("View Profile",
                                      style: TextStyle(
                                          color: black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500))),
                              ElevatedButton(
                                  style: ButtonStyle(
                                      shape: WidgetStatePropertyAll(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10))),
                                      backgroundColor:
                                          WidgetStatePropertyAll(mainGreen)),
                                  onPressed: () {},
                                  child: Text("Appointment",
                                      style: TextStyle(
                                          color: white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500))),
                            ],
                          ),
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
