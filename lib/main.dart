import 'package:flutter/material.dart';

//task 13
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            //main column
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                //Row 1
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //container1
                    Container(
                      color: Color.fromARGB(255, 0, 255, 200),
                      width: 150,
                      height: 150,
                      margin: EdgeInsets.all(10),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/facebook.png",
                              width: 40,
                            ),
                            Text("Facebook"),
                          ]),
                    ),
                    //Container 2
                    Container(
                      color: Color.fromARGB(255, 0, 255, 200),
                      width: 150,
                      height: 150,
                      margin: EdgeInsets.all(10),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/twitter.png",
                              width: 40,
                            ),
                            Text("Twitter"),
                          ]),
                    ),
                  ],
                ),
              ),
              Container(
                //Row 2
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //container3
                    Container(
                      color: Color.fromARGB(255, 0, 255, 200),
                      width: 150,
                      height: 150,
                      margin: EdgeInsets.all(10),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/instagram.png",
                              width: 40,
                            ),
                            Text("Instagram"),
                          ]),
                    ),
                    //Container 4
                    Container(
                      color: Color.fromARGB(255, 0, 255, 200),
                      width: 150,
                      height: 150,
                      margin: EdgeInsets.all(10),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/youtube.png",
                              width: 40,
                            ),
                            Text("YouTube"),
                          ]),
                    ),
                  ],
                ),
              ),
              Container(
                //Row 3
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //container5
                    Container(
                      color: Color.fromARGB(255, 0, 255, 200),
                      width: 150,
                      height: 150,
                      margin: EdgeInsets.all(10),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/spotify.png",
                              width: 40,
                            ),
                            Text("Spotify"),
                          ]),
                    ),
                    //Container 6
                    Container(
                      color: Color.fromARGB(255, 0, 255, 200),
                      width: 150,
                      height: 150,
                      margin: EdgeInsets.all(10),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/pinterest.png",
                              width: 40,
                            ),
                            Text("Pinterest"),
                          ]),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
