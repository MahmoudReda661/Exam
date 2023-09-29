import 'package:flutter/material.dart';


class MoodyApp extends StatelessWidget {
  static const String routeName = "MoodyApp";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          children:[
            Row(
              children: [
                Image.asset("assets/images/Group.png",width: 40,height: 50),
                SizedBox(width: 10),
                Text("Moody",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                Spacer(),
                Icon(Icons.notifications_none,size: 30,),
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Text("Hello,",style: TextStyle(
                  fontSize: 20,
                )),
                SizedBox(width: 10,),
                Text("Sara Rose",style: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.bold
                )),

              ],
            ),
            Row(
              children: [
                Text("how are you feeling today")
              ],
            )
          ]
        ),
      ),
    );
  }
}
