import 'package:flutter/material.dart';

//task 18

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color.fromARGB(192, 7, 173, 43),
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                child: Image.asset(
                  "assets/images/tomato.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 253, 253, 253),
                            padding: EdgeInsets.symmetric(vertical: 10.0),
                            fixedSize: Size.fromWidth(320)),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              child: Image.asset(
                                "assets/images/google.png",
                              ),
                            ),
                            Text(
                              "Continue with Google",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 255, 255, 255),
                            padding: EdgeInsets.symmetric(vertical: 10.0),
                            fixedSize: Size.fromWidth(320)),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              child: Image.asset(
                                "assets/images/facebook.png",
                              ),
                            ),
                            Text(
                              "Continue with Facebook",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      Text("consult our terms and services\n",
                          style: TextStyle(fontSize: 16, color: Colors.white))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
