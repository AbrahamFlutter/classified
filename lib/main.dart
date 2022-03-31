import 'package:flutter/material.dart';
//task 6

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color.fromARGB(255, 255, 255, 255),
          child: Center(
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: Color.fromARGB(255, 78, 3, 255),
                side: BorderSide(color: Colors.grey),
                padding: const EdgeInsets.all(16.0),
              ),
              onPressed: () {},
              child: Text("Click me"),
            ),
          ),
        ),
      ),
    ),
  );
}
