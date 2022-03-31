import 'package:flutter/material.dart';
//task 10

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color.fromARGB(192, 7, 173, 43),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/tomato.jpg",
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  primary: Color.fromARGB(255, 0, 0, 0),
                  padding: EdgeInsets.all(15.0),
                ),
                onPressed: () {},
                child: Text("Continue with Google",
                    style: TextStyle(fontSize: 25)),
              ),
              ElevatedButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 0, 122, 10),
                  primary: Color.fromARGB(255, 255, 255, 255),
                  padding: const EdgeInsets.all(16.0),
                ),
                onPressed: () {},
                child: Text("Continue With Facebook",
                    style: TextStyle(fontSize: 25)),
              ),
              Text("consult our terms and services\n",
                  style: TextStyle(fontSize: 16))
            ],
          ),
        ),
      ),
    ),
  );
}
