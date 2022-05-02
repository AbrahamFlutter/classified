import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itktask/screens/login.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:get_storage/get_storage.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final TextEditingController _nameCtrl = TextEditingController();
  final TextEditingController _emailCtrl = TextEditingController();
  final TextEditingController _mobileCtrl = TextEditingController();
  var _data;
  var token =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2MjVlYmI4Y2I4ZmRlOGI3YWFiMDliMmIiLCJpYXQiOjE2NTExNzYwOTF9.HSLfTnZHYqwxIYq0an1uz_ypWEo3C9xZR2q44Xhyqs8"; //stdin.readLineSync();
  String _imageProfile = "";
  final box = GetStorage();
  profileAPI() async {
    var response = await http.patch(
        Uri.parse("https://adlisting.herokuapp.com/user/"),
        headers: {
          "Content-type": "application/json",
          "Authorization": "Bearer $token"
        },
        body: json.encode(
          {
            "name": _nameCtrl.text,
            "email": _emailCtrl.text,
            "mobile": _mobileCtrl.text,
            "imgURL": "http://site.com/image.png"
          },
        ));
    print("___________________________________________\n");
    print(json.decode(response.body));
    _data = json.decode(response.body);
    print(_data[1]);
  }

  pickImage() async {
    var image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _imageProfile = image.path;
      });
    } else {
      print("no image picked");
    }
  }

  writeToken() {
    var token = box.write("token", "abcd");
    print(token);
  }

  readToken() {
    box.read("token");
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
                        : Image.asset(
                            "assets/images/sundar.png",
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
                      decoration: const InputDecoration(
                        labelText: "Full Name",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: "Sundaravel",
                        hintStyle: TextStyle(fontWeight: FontWeight.bold),
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.name,
                    ),
                    TextField(
                      controller: _emailCtrl,
                      decoration: const InputDecoration(
                        labelText: "Email Address",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: "sundar@appmaking.com",
                        hintStyle: TextStyle(fontWeight: FontWeight.bold),
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    TextField(
                      controller: _mobileCtrl,
                      decoration: const InputDecoration(
                        labelText: "Mobile phone",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: "+919876543210",
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
                          //

                          profileAPI();
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
                        Get.to(const Login());
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
