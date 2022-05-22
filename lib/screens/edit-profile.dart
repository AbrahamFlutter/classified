import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itktask/screens/login.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:get_storage/get_storage.dart';

import '../util/constants.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final TextEditingController _nameCtrl = TextEditingController();
  final TextEditingController _emailCtrl = TextEditingController();
  final TextEditingController _mobileCtrl = TextEditingController();
  String _imageProfile = "";

  logOutFirebase() {
    FirebaseAuth.instance.signOut().then((value) {
      Get.offAll(Login());
    });
  }

  pickImage() async {
    var image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _imageProfile = image.path;
      });
      //upload image
      var request = http.MultipartRequest(
          "POST", Uri.parse("https://adlisting.herokuapp.com/upload/profile"));
      request.files
          .add(await http.MultipartFile.fromPath("avatar", image.path));
      var response = await request.send();
      var resData = await response.stream.toBytes();
      var resString = String.fromCharCodes(resData);
      var jsonObj = json.decode(resString);
      print(jsonObj["data"]["path"]);
    } else {
      print("no image picked");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Edit Profile"),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Center(
              child: Container(
                width: 150,
                padding: EdgeInsets.all(6.0),
                height: 150,
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Stack(children: [
                  ClipOval(
                    //like circle avatar
                    child: _imageProfile != ""
                        ? Image.file(File(_imageProfile),
                            fit: BoxFit.cover, width: 150, height: 150)
                        : Image.network(
                            "imgProfile",
                            fit: BoxFit.cover,
                            width: 150,
                            height: 150,
                          ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: FloatingActionButton(
                        onPressed: () {
                          pickImage();
                        },
                        elevation: 0.0,
                        backgroundColor: Color.fromARGB(255, 255, 102, 14),
                        child: const Icon(Icons.edit)),
                  ),
                ]),
              ),
            ),
            Container(
              height: 400,
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 18.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextField(
                      controller: _nameCtrl,
                      decoration: InputDecoration(
                        labelText: "Full Name",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: "name",
                        hintStyle: TextStyle(fontWeight: FontWeight.bold),
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.name,
                    ),
                    TextField(
                      controller: _emailCtrl,
                      decoration: InputDecoration(
                        labelText: "Email Address",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: "email",
                        hintStyle: TextStyle(fontWeight: FontWeight.bold),
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    TextField(
                      controller: _mobileCtrl,
                      decoration: InputDecoration(
                        labelText: "Mobile phone",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: "+" + "mobile",
                        hintStyle: TextStyle(fontWeight: FontWeight.bold),
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text("Update profile",
                            style: TextStyle(fontSize: 20)),
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(225, 255, 102, 14),
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Color.fromARGB(255, 255, 102, 14),
                        padding: const EdgeInsets.all(16.0),
                      ),
                      onPressed: () {
                        logOutFirebase();
                      },
                      child: const Text(
                        "Log out",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
