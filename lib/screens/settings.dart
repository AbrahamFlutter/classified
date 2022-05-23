import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itktask/screens/about.dart';
import 'package:itktask/screens/edit-profile.dart';
import 'package:itktask/screens/my-ads.dart';

class Settings extends StatefulWidget {
  Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final TextEditingController _nameCtrl = TextEditingController();

  final TextEditingController _emailCtrl = TextEditingController();

  final TextEditingController _mobileCtrl = TextEditingController();

  String _imageProfile =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8_RExXJpUqoSwMKLCJzbGxYkJ5EFnRTecKA&usqp=CAU";

  var userObj = {};

  getUserData() {
    FirebaseFirestore.instance
        .collection("accounts")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get()
        .then((res) {
      setState(() {
        userObj = {"id": res.id, ...res.data()!};
        print(userObj);
        _nameCtrl.text = userObj['displayName'];
        _emailCtrl.text = userObj['email'];
        _mobileCtrl.text = userObj['mobile'];
        _imageProfile = userObj['imageUrl'];
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserData();
  }

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
                  backgroundImage: NetworkImage(_imageProfile),
                  radius: 28,
                ),
                title: Text(_nameCtrl.text),
                trailing: TextButton(
                  onPressed: () {
                    Get.to(EditProfile());
                  },
                  child: Text(
                    "Edit",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                subtitle: Text(_mobileCtrl.text),
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
