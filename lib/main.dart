import 'package:flutter/material.dart';

//task 16
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Container(
              height: 360,
              width: 300,
              //color: Color.fromARGB(176, 35, 250, 82),
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromARGB(221, 117, 117, 117), width: 2),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 10.0),
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/images/k.jpg"),
                            radius: 28,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 15.0, right: 100),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "itk.com",
                                  style: TextStyle(fontSize: 22),
                                ),
                                Text("Folow us"),
                              ]),
                        ),
                        Icon(Icons.more_vert)
                      ]),
                  Container(
                    width: 300,
                    child: Image.asset(
                      "assets/images/travel.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                            primary: Colors.black,
                          ),
                          onPressed: () {},
                          child: Row(children: [
                            Icon(Icons.favorite),
                            Text("Like"),
                          ]),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            primary: Colors.black,
                          ),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(
                                Icons.chat_bubble_outlined,
                              ),
                              Text("Comment"),
                            ],
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            primary: Colors.black,
                          ),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(Icons.share),
                              Text(
                                "Share",
                              ),
                            ],
                          ),
                        ),
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
