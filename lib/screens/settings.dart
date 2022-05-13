import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itktask/screens/about.dart';
import 'package:itktask/screens/edit-profile.dart';
import 'package:itktask/screens/my-ads.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            child: Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/sundar.png"),
                  radius: 28,
                ),
                title: Text("Sundar"),
                trailing: TextButton(
                  onPressed: () {
                    Get.to(EditProfile());
                  },
                  child: Text(
                    "Edit",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                subtitle: Text("9876542310"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.to(MyAds());
            },
            child: Card(
              child: ListTile(
                leading: Icon(Icons.post_add),
                title: Text("My Ads"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.to(About());
            },
            child: Card(
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text("About us"),
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.contacts),
              title: Text("Contact us"),
            ),
          )
        ],
      )),
    );
  }
}
