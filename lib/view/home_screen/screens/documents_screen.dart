import 'package:flutter/material.dart';
import 'package:hospital_ui/utils/color_constant/color_constant.dart';

class DocumentsScreen extends StatefulWidget {
  const DocumentsScreen({super.key});

  @override
  State<DocumentsScreen> createState() => _DocumentsScreenState();
}

class _DocumentsScreenState extends State<DocumentsScreen> {
  List<String> docNames = [
    "Dr.Ryle kincaid",
    "Dr. Alex Volkov",
    "Dr.Rhys Larsen",
    "Dr. Josh Chen",
    "Dr.Christain Harper",
  ];
  List<String> patientIds = [
    "RCVKAJNAHNAJNA",
    "LACHBEUNMAMANA",
    "RCVKAJNAJNAA",
    "ACKKAJNAHNAJNA",
    "HUFBEUNMAMANA",
  ];
  List<String> designations = [
    "Assistant Professor",
    "Assistant Professor",
    "Assistant Professor",
    "Assistant Professor",
    "Assistant Professor",
  ];
  List<String> dates = [
    "31-01-2025",
    "02-02-2025",
    "03-02-2025",
    "04-02-2025",
    "05-02-2025",
  ];
  List<String> updatedBy = [
    "Doctor",
    "Patient",
    "Patient",
    "Doctor",
    "Patient",
  ];

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            top: 50,
            bottom: 20,
          ),
          child: Column(
            children: [
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: docNames.length,
                shrinkWrap: true,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(border: Border.all(color: black)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                            child: Text("Patient ID :${patientIds[index]}",
                                style: TextStyle(
                                    color: white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500)),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(docNames[index],
                            style: TextStyle(
                                color: black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500)),
                        Text(
                          designations[index],
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Date : 31-01-2025",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Updated by : Patient",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                color: black,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Text("view Profile",
                                    style: TextStyle(
                                        color: white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                color: mainGreen,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Text("Edit",
                                    style: TextStyle(
                                        color: white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Text("Delete",
                                    style: TextStyle(
                                        color: white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
