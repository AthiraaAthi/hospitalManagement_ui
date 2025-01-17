import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hospital_ui/utils/color_constant/color_constant.dart';
import 'package:hospital_ui/utils/img_constant/image_constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Color> colorList = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.orange
  ];
  int activeIndex = 0;
  final CarouselController _controller = CarouselController();
  final List<String> optTitles = [
    "Book An Appointment",
    "Find A Doctor",
    "View Lab Reports",
    "Documents",
    "Appointment List",
    "Upload Documents",
    "Call For Appointment",
    "Contact Us",
    "About Us",
  ];
  final List<Color> colors = [
    Colors.redAccent,
    Colors.blueAccent,
    Colors.greenAccent,
    Colors.orangeAccent,
    Colors.purpleAccent,
    Colors.tealAccent,
    Colors.pinkAccent,
    Colors.lightGreenAccent,
    Colors.amberAccent,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        leading: Icon(
          Icons.menu,
          size: 30,
        ),
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
      body: Column(
        children: [
          CarouselSlider(
              items: colorList.map((color) {
                return Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                );
              }).toList(),
              options: CarouselOptions(
                height: 200.0,
                enlargeCenterPage: true,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 2),
                viewportFraction: 0.9,
                onPageChanged: (index, reason) {
                  setState(() {
                    activeIndex = index;
                  });
                },
              )),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(colorList.length, (index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: CircleAvatar(
                  radius: 6,
                  backgroundColor:
                      activeIndex == index ? Colors.black : Colors.grey,
                ),
              );
            }),
          ),
          SizedBox(
            height: 50,
          ),
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1,
            ),
            itemCount: optTitles.length,
            itemBuilder: (context, index) {},
          )
        ],
      ),
    );
  }
}
