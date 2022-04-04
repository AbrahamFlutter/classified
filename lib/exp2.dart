import 'package:flutter/material.dart';
//task 21
/*
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 168, 0, 28),
            centerTitle: true,
            title: Text("Shop")),
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.all(15.0),
            child: ListView(children: [
              Container(
                height: 70,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                            shape: StadiumBorder(),
                            backgroundColor: Color.fromARGB(255, 0, 0, 0)),
                        child: Text(
                          "Trending",
                          style: TextStyle(
                            color: Color.fromARGB(224, 255, 254, 254),
                          ),
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                            shape: StadiumBorder(),
                            backgroundColor: Color.fromARGB(255, 0, 0, 0)),
                        child: Text(
                          "Popular",
                          style: TextStyle(
                            color: Color.fromARGB(224, 255, 254, 254),
                          ),
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                            shape: StadiumBorder(),
                            backgroundColor: Color.fromARGB(255, 0, 0, 0)),
                        child: Text(
                          "Computers",
                          style: TextStyle(
                            color: Color.fromARGB(224, 255, 254, 254),
                          ),
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                            shape: StadiumBorder(),
                            backgroundColor: Color.fromARGB(255, 0, 0, 0)),
                        child: Text(
                          "Mobiles",
                          style: TextStyle(
                            color: Color.fromARGB(224, 255, 254, 254),
                          ),
                        ),
                      ),
                    ]),
              ),
              Container(
                width: double.infinity,
                height: 100,
                margin: EdgeInsets.all(8),
                color: Color.fromARGB(64, 168, 0, 28),
                child: Row(children: [
                  Container(
                      height: 80,
                      padding: EdgeInsets.only(left: 10.0),
                      margin: EdgeInsets.all(10.0),
                      child: Image.asset("assets/images/violin.jpg",
                          fit: BoxFit.cover)),
                  Container(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Violin for Sale",
                            style: TextStyle(fontSize: 22),
                          ),
                          Text("3 min. ago"),
                          Text(
                            "\$5000",
                            style: TextStyle(
                              fontSize: 30,
                              color: Color.fromARGB(255, 168, 0, 28),
                            ),
                          )
                        ]),
                  ),
                ]),
              ),
              Container(
                width: double.infinity,
                height: 100,
                margin: EdgeInsets.all(8),
                color: Color.fromARGB(64, 168, 0, 28),
                child: Row(children: [
                  Container(
                      height: 80,
                      padding: EdgeInsets.only(left: 10.0),
                      margin: EdgeInsets.all(10.0),
                      child: Image.asset("assets/images/violin.jpg",
                          fit: BoxFit.cover)),
                  Container(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Violin for Sale",
                            style: TextStyle(fontSize: 22),
                          ),
                          Text("3 min. ago"),
                          Text(
                            "\$5000",
                            style: TextStyle(
                              fontSize: 30,
                              color: Color.fromARGB(255, 168, 0, 28),
                            ),
                          )
                        ]),
                  ),
                ]),
              ),
              Container(
                width: double.infinity,
                height: 100,
                margin: EdgeInsets.all(8),
                color: Color.fromARGB(64, 168, 0, 28),
                child: Row(children: [
                  Container(
                      height: 80,
                      padding: EdgeInsets.only(left: 10.0),
                      margin: EdgeInsets.all(10.0),
                      child: Image.asset("assets/images/violin.jpg",
                          fit: BoxFit.cover)),
                  Container(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Violin for Sale",
                            style: TextStyle(fontSize: 22),
                          ),
                          Text("3 min. ago"),
                          Text(
                            "\$5000",
                            style: TextStyle(
                              fontSize: 30,
                              color: Color.fromARGB(255, 168, 0, 28),
                            ),
                          )
                        ]),
                  ),
                ]),
              ),
              Container(
                width: double.infinity,
                height: 100,
                margin: EdgeInsets.all(8),
                color: Color.fromARGB(64, 168, 0, 28),
                child: Row(children: [
                  Container(
                      height: 80,
                      padding: EdgeInsets.only(left: 10.0),
                      margin: EdgeInsets.all(10.0),
                      child: Image.asset("assets/images/violin.jpg",
                          fit: BoxFit.cover)),
                  Container(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Violin for Sale",
                            style: TextStyle(fontSize: 22),
                          ),
                          Text("3 min. ago"),
                          Text(
                            "\$5000",
                            style: TextStyle(
                              fontSize: 30,
                              color: Color.fromARGB(255, 168, 0, 28),
                            ),
                          )
                        ]),
                  ),
                ]),
              ),
              Container(
                width: double.infinity,
                height: 100,
                margin: EdgeInsets.all(8),
                color: Color.fromARGB(64, 168, 0, 28),
                child: Row(children: [
                  Container(
                      height: 80,
                      padding: EdgeInsets.only(left: 10.0),
                      margin: EdgeInsets.all(10.0),
                      child: Image.asset("assets/images/violin.jpg",
                          fit: BoxFit.cover)),
                  Container(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Violin for Sale",
                            style: TextStyle(fontSize: 22),
                          ),
                          Text("3 min. ago"),
                          Text(
                            "\$5000",
                            style: TextStyle(
                              fontSize: 30,
                              color: Color.fromARGB(255, 168, 0, 28),
                            ),
                          )
                        ]),
                  ),
                ]),
              ),
              Container(
                width: double.infinity,
                height: 100,
                margin: EdgeInsets.all(8),
                color: Color.fromARGB(64, 168, 0, 28),
                child: Row(children: [
                  Container(
                      height: 80,
                      padding: EdgeInsets.only(left: 10.0),
                      margin: EdgeInsets.all(10.0),
                      child: Image.asset("assets/images/violin.jpg",
                          fit: BoxFit.cover)),
                  Container(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Violin for Sale",
                            style: TextStyle(fontSize: 22),
                          ),
                          Text("3 min. ago"),
                          Text(
                            "\$5000",
                            style: TextStyle(
                              fontSize: 30,
                              color: Color.fromARGB(255, 168, 0, 28),
                            ),
                          )
                        ]),
                  ),
                ]),
              ),
            ]),
          ),
        ),
      ),
    ),
  );
}
*/