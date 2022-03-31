import 'package:flutter/material.dart';
//task 9

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color.fromARGB(71, 224, 22, 89),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset("assets/images/k.jpg", width: 200),
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
