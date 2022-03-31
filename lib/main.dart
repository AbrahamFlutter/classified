import 'package:flutter/material.dart';

//task 12
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  primary: Color.fromARGB(255, 0, 0, 0),
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
                    style: TextStyle(fontSize: 20),
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
