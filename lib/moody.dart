import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MoodyApp extends StatefulWidget {
  static const String routeName = "MoodyApp";

  @override
  State<MoodyApp> createState() => _MoodyAppState();
}

class _MoodyAppState extends State<MoodyApp> {

  List imageslist = [
    {"id": 1, "image_path":"assets/images/Group.png"},
    {"id": 1, "image_path":"assets/images/Group.png"},
    {"id": 1, "image_path":"assets/images/Group.png"},
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(children: [
          Row(
            children: [
              Image.asset("assets/images/Group.png", width: 40, height: 50),
              SizedBox(width: 10),
              Text(
                "Moody",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Icon(
                Icons.notifications_none,
                size: 30,
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Text("Hello,",
                  style: TextStyle(
                    fontSize: 20,
                  )),
              SizedBox(
                width: 10,
              ),
              Text("Sara Rose",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                "How are you feeling today ?",
                style: TextStyle(fontSize: 15),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.emoji_emotions,
                color: Colors.red,
                size: 55,
              ),
              Icon(
                Icons.emoji_emotions,
                color: Colors.red,
                size: 55,
              ),
              Icon(
                Icons.emoji_emotions,
                color: Colors.red,
                size: 55,
              ),
              Icon(
                Icons.emoji_emotions,
                color: Colors.red,
                size: 55,
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Text("Feature",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Spacer(),
              Text("See more",
                  style: TextStyle(fontSize: 15, color: Colors.green)),
              Icon(
                Icons.arrow_forward_ios,
                size: 15,
                color: Colors.green,
              )
            ],
          ),
          Spacer(),
          Stack(

          )
        ]),
      ),
    );
  }
}
