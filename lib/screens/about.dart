import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itktask/screens/edit-profile.dart';
import 'package:itktask/screens/my-ads.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About"),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            child: Image.asset(
              "assets/images/background.png",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            child: Text(
                "this app was developed by Abraham Magaña González in the ITK program in flutter area with the excellent instructor Sundaravel. In this app we aplie UI consepts, API's and good prectices to be a profesional in flutter ",
                style: TextStyle(fontSize: 18)),
          )
        ],
      )),
    );
  }
}
