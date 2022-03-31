import 'package:flutter/material.dart';
//task 5

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color.fromARGB(255, 255, 255, 255),
          child: Center(
            child: TextButton(
              style: TextButton.styleFrom(
                primary: Color.fromARGB(255, 78, 3, 255),
                padding: const EdgeInsets.all(16.0),
              ),
              onPressed: () {},
              child: Text(
                "Click me",
                style: TextStyle(fontSize: 40),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
