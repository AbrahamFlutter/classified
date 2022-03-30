import 'package:flutter/material.dart';
//task 4

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color.fromARGB(255, 255, 255, 255),
          child: Center(
            child: ElevatedButton(
              style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 122, 29, 0),
                primary: Color.fromARGB(255, 255, 255, 255),
                padding: const EdgeInsets.all(16.0),
              ),
              onPressed: () {},
              child: Text("Click"),
            ),
          ),
        ),
      ),
    ),
  );
}
