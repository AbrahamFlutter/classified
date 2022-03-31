import 'package:flutter/material.dart';
//task 8

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color.fromARGB(24, 236, 25, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/k.jpg",
                width: 200,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  primary: Color.fromARGB(255, 0, 0, 0),
                  padding: const EdgeInsets.all(16.0),
                ),
                onPressed: () {},
                child: Text("itk.com", style: TextStyle(fontSize: 40)),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
