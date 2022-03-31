import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            color: Color.fromARGB(255, 212, 212, 212),
            width: double.infinity,
            height: 100,
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 80,
                  width: 80,
                  child: Image.asset(
                    "assets/images/k.jpg",
                  ),
                ),
                //SizedBox(width: 8),
                Text(
                  "itk.com",
                  style: TextStyle(fontSize: 25),
                ),
                Icon(Icons.model_training),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
