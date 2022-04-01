import 'package:flutter/material.dart';

//task 12
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Container(
              height: 250,
              width: 250,
              color: Color.fromARGB(176, 35, 250, 82),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/k.jpg"),
                    radius: 28,
                  ),
                  Text(
                    "itk.com",
                    style: TextStyle(fontSize: 40),
                  ),
                  Text("Folow us"),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Image.asset(
                            "assets/images/facebook.png",
                            width: 40,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Image.asset(
                            "assets/images/twitter.png",
                            width: 40,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Image.asset(
                            "assets/images/instagram.png",
                            width: 40,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
