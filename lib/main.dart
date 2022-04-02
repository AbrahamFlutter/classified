import 'package:flutter/material.dart';

//task 17
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Container(
              height: 300,
              width: 300,
              //color: Color.fromARGB(176, 35, 250, 82),
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromARGB(221, 117, 117, 117), width: 2),
              ),
              child: Stack(
                children: [
                  Container(
                    width: 300,
                    height: 300,
                    child: Image.asset(
                      "assets/images/travel.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Icon(Icons.favorite,
                          color: Color.fromARGB(225, 255, 0, 76)),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      color: Color.fromARGB(166, 240, 249, 255),
                      child: Row(children: [
                        Container(
                          padding: EdgeInsets.only(left: 10.0),
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/images/k.jpg"),
                            radius: 28,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 15.0, right: 100),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "itk.com",
                                  style: TextStyle(fontSize: 22),
                                ),
                                Text("Folow us"),
                              ]),
                        ),
                        Icon(Icons.more_vert)
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
