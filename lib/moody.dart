import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MoodyApp extends StatefulWidget {
  static const String routeName = "MoodyApp";

  @override
  State<MoodyApp> createState() => _MoodyAppState();
}

class _MoodyAppState extends State<MoodyApp> {
  List imageslist = [
    {"id": 1, "image_path": "assets/images/Frame.png"},
    {"id": 2, "image_path": "assets/images/Frame.png"},
    {"id": 3, "image_path": "assets/images/Frame.png"},
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: ""),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(children: [
          Row(
            children: [
              Image.asset("assets/images/Group.png", width: 50, height: 60),
              SizedBox(width: 15),
              Text(
                "Moody",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Icon(
                Icons.notifications_none,
                size: 30,
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Text("Hello,",
                  style: TextStyle(
                    fontSize: 25,
                  )),
              SizedBox(
                width: 10,
              ),
              Text("Sara Rose",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(
            height: 15,
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
            height: 25,
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
          SizedBox(height: 25),
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
          SizedBox(
            height: 25,
          ),
          Stack(
            children: [
              InkWell(
                onTap: () {
                  print(currentIndex);
                },
                child: CarouselSlider(
                    items: imageslist
                        .map(
                          (item) => Image.asset(
                            item["image_path"],
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width,
                          ),
                        )
                        .toList(),
                    carouselController: carouselController,
                    options: CarouselOptions(
                        scrollPhysics: BouncingScrollPhysics(),
                        autoPlay: true,
                        aspectRatio: 2,
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          setState(() {
                            currentIndex = index;
                          });
                        })),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageslist.asMap().entries.map((entry) {
                print(entry);
                print(entry.key);
                return GestureDetector(
                  onTap: () => carouselController.animateToPage(entry.key),
                  child: Container(
                    width: currentIndex == entry.key ? 17 : 7,
                    height: 7.0,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 3.0,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: currentIndex == entry.key
                            ? Colors.red
                            : Colors.teal),
                  ),
                );
              }).toList(),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Text("Exercise",
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
          SizedBox(
            height: 35,
          ),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/Frame1.png",
                      height: 50,
                      width: 50,
                    ),
                    Text(
                      "Relaxation",
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/Frame2.png",
                      height: 50,
                      width: 50,
                    ),
                    Text(
                      "Meditation",
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 35,),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/Frame3.png",
                      height: 50,
                      width: 50,
                    ),
                    Text(
                      "Beathing",
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/Frame4.png",
                      height: 50,
                      width: 50,
                    ),
                    Text(
                      "Yoga",
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
