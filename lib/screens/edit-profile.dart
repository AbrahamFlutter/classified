import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itktask/screens/login.dart';
import 'dart:convert';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:get_storage/get_storage.dart';

import '../controllers/ads.dart';
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
  String _imageProfile =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8_RExXJpUqoSwMKLCJzbGxYkJ5EFnRTecKA&usqp=CAU";
  var userObj = {};
  logOutFirebase() {
    FirebaseAuth.instance.signOut().then((value) {
      Get.offAll(Login());
    });
  }

  getUserData() {
    FirebaseFirestore.instance
        .collection("accounts")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get()
        .then((res) {
      setState(
        () {
          userObj = {"id": res.id, ...res.data()!};
          print(userObj);
          _nameCtrl.text = userObj['displayName'];
          _emailCtrl.text = userObj['email'];
          _mobileCtrl.text = userObj['mobile'];
          _imageProfile = userObj['imageUrl'];
        },
      );
    });
  }

  updateProfile() {
    FirebaseFirestore.instance
        .collection("accounts")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .update({
      "displayName": _nameCtrl.text,
      "mobile": _mobileCtrl.text,
      "email": _emailCtrl.text,
      "imageUrl": _imageProfile
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserData();
  }

  pickImage() async {
    var image = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (image!.path.length != 0) {
      //upload image
      File file = File(image.path);
      FirebaseStorage.instance
          .ref()
          .child("uploads")
          .child(FirebaseAuth.instance.currentUser!.uid)
          .putFile(file)
          .then((response) {
        print("\nUploaded");
        response.ref.getDownloadURL().then((url) => setState(() {
              _imageProfile = url;
            }));
        FirebaseFirestore.instance
            .collection("accounts")
            .doc(FirebaseAuth.instance.currentUser!.uid)
            .update({"imageUrl": _imageProfile});
      }).catchError((e) => print("Error upload"));
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
                    child: Image.network(
                      _imageProfile,
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
                        //hintText: "email",
                        //hintStyle: TextStyle(fontWeight: FontWeight.bold),
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
                        onPressed: () {
                          updateProfile();
                        },
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
