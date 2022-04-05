import 'package:flutter/material.dart';

// task 23
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 255, 0, 76),
            centerTitle: true,
            title: Text("Shop")),
        body: SafeArea(
          child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.90),
              children: [
                Container(
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
                          "assets/images/violin.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.favorite_border,
                            color: Color.fromARGB(225, 255, 0, 76),
                            size: 40,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: double.infinity,
                          height: 80,
                          color: Color.fromARGB(166, 240, 249, 255),
                          child: Container(
                            padding: EdgeInsets.only(left: 15.0, right: 100),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "White violin",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  Text("on sale"),
                                ]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
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
                          "assets/images/violin.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.favorite_border,
                            color: Color.fromARGB(225, 255, 0, 76),
                            size: 40,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: double.infinity,
                          height: 80,
                          color: Color.fromARGB(166, 240, 249, 255),
                          child: Container(
                            padding: EdgeInsets.only(left: 15.0, right: 100),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "White violin",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  Text("on sale"),
                                ]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
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
                          "assets/images/violin.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.favorite_border,
                            color: Color.fromARGB(225, 255, 0, 76),
                            size: 40,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: double.infinity,
                          height: 80,
                          color: Color.fromARGB(166, 240, 249, 255),
                          child: Container(
                            padding: EdgeInsets.only(left: 15.0, right: 100),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "White violin",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  Text("on sale"),
                                ]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
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
                          "assets/images/violin.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.favorite_border,
                            color: Color.fromARGB(225, 255, 0, 76),
                            size: 40,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: double.infinity,
                          height: 80,
                          color: Color.fromARGB(166, 240, 249, 255),
                          child: Container(
                            padding: EdgeInsets.only(left: 15.0, right: 100),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "White violin",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  Text("on sale"),
                                ]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
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
                          "assets/images/violin.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.favorite_border,
                            color: Color.fromARGB(225, 255, 0, 76),
                            size: 40,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: double.infinity,
                          height: 80,
                          color: Color.fromARGB(166, 240, 249, 255),
                          child: Container(
                            padding: EdgeInsets.only(left: 15.0, right: 100),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "White violin",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  Text("on sale"),
                                ]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
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
                          "assets/images/violin.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.favorite_border,
                            color: Color.fromARGB(225, 255, 0, 76),
                            size: 40,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: double.infinity,
                          height: 80,
                          color: Color.fromARGB(166, 240, 249, 255),
                          child: Container(
                            padding: EdgeInsets.only(left: 15.0, right: 100),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "White violin",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  Text("on sale"),
                                ]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    ),
  );
}
