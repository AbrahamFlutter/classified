import 'package:flutter/material.dart';
//task7

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color.fromARGB(255, 255, 255, 255),
          child: Center(
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.account_circle),
              iconSize: 100,
            ),
          ),
        ),
      ),
    ),
  );
}
