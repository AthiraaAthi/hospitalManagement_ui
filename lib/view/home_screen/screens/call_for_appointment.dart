import 'package:flutter/material.dart';
import 'package:hospital_ui/utils/color_constant/color_constant.dart';
import 'package:hospital_ui/utils/img_constant/image_constant.dart';

class CallForAppointment extends StatefulWidget {
  const CallForAppointment({super.key});

  @override
  State<CallForAppointment> createState() => _CallForAppointmentState();
}

class _CallForAppointmentState extends State<CallForAppointment> {
  List<String> drawrOptions = [
    "Home",
    "Edit Profile",
    "Appointment",
    "Documents",
    "Upload Documents",
    "About Us",
    "Contact Us",
    "Log Out",
  ];
  List<IconData> drawerIcons = [
    Icons.home_outlined,
    Icons.edit_outlined,
    Icons.event_outlined,
    Icons.description_outlined,
    Icons.cloud_upload_outlined,
    Icons.info_outline,
    Icons.contact_mail_outlined,
    Icons.logout,
  ];
  List<String> appointmentOptions = [
    ImageConstant.reception,
    ImageConstant.laboratory,
    ImageConstant.emergency,
    ImageConstant.operation,
    ImageConstant.clinics,
    ImageConstant.surgeon,
    ImageConstant.medicine,
    ImageConstant.dental,
    ImageConstant.cardiology,
    ImageConstant.urology,
    ImageConstant.radiologist,
    ImageConstant.physiotherapy,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                  color: mainGreen,
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(ImageConstant.profile),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Dominic Davenport",
                          style: TextStyle(
                            color: white,
                          ),
                        ),
                        Text(
                          "dominic_ale@gmail.com",
                          style: TextStyle(color: white, fontSize: 13),
                        ),
                      ],
                    )
                  ],
                )),
            ListView.builder(
              shrinkWrap: true,
              itemCount: drawrOptions.length,
              itemBuilder: (context, index) => ListTile(
                leading: Icon(
                  drawerIcons[index],
                  color: mainGreen,
                  size: 30,
                ),
                title:
                    Text(drawrOptions[index], style: TextStyle(fontSize: 17)),
                onTap: () {},
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: white,
        toolbarHeight: 100,
        centerTitle: true,
        title: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImageConstant.logo),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: [
                RichText(
                    text: TextSpan(
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: "HOS",
                      style: TextStyle(color: black),
                    ),
                    TextSpan(
                      text: "PI",
                      style: TextStyle(color: mainGreen),
                    ),
                    TextSpan(
                      text: "TAL",
                      style: TextStyle(color: black),
                    ),
                  ],
                )),
                Text(
                  "MANAGER",
                  style: TextStyle(
                    fontSize: 17,
                    letterSpacing: 14,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            GridView.builder(
              shrinkWrap: true,
              itemCount: appointmentOptions.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 15,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) => Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ImageConstant.reception),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
