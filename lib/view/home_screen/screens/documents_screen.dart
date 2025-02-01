import 'package:flutter/material.dart';
import 'package:hospital_ui/utils/color_constant/color_constant.dart';

class DocumentsScreen extends StatefulWidget {
  const DocumentsScreen({super.key});

  @override
  State<DocumentsScreen> createState() => _DocumentsScreenState();
}

class _DocumentsScreenState extends State<DocumentsScreen> {
  List<String> docNames = [];
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
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 50,
          bottom: 20,
        ),
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) => Container(
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
                    Text(
                      "Assistant Professor",
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
            )
          ],
        ),
      ),
    );
  }
}
