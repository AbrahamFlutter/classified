import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:itktask/screens/ads-listing.dart';
import 'package:itktask/screens/register.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  const Login({
    Key? key,
  }) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _emailCtrl = TextEditingController();
  TextEditingController _passwordCtrl = TextEditingController();
  final box = GetStorage();
  final nameData = GetStorage();
  final emailData = GetStorage();
  final mobileData = GetStorage();
  loginAPI() async {
    var response =
        await http.post(Uri.parse("https://adlisting.herokuapp.com/auth/login"),
            headers: {"Content-type": "application/json"},
            body: json.encode(
              {"email": _emailCtrl.text, "password": _passwordCtrl.text},
            ));
    print(json.decode(response.body));
    print(response.statusCode);
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      var token = data["data"]["token"];
      box.write("token", token);
      nameData.write("name", data["data"]["user"]["name"]);
      emailData.write("email", data["data"]["user"]["email"]);
      mobileData.write("mobile", data["data"]["user"]["mobile"]);
      Get.offAll(AdsListing());
    } else {
      print("Some faliure, try again");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              // cover "photo"
              width: double.infinity,
              height: 400,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 400,
                    child: Image.asset(
                      "assets/images/background.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 400,
                    padding: EdgeInsets.all(12.0),
                    child: Center(
                      child: Image.asset(
                        "assets/images/logo.png",
                        width: 200,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 300,
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 18.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextField(
                      controller: _emailCtrl,
                      decoration: const InputDecoration(
                        labelText: "Email Address",
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    TextField(
                      controller: _passwordCtrl,
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          //Get.offAll(AdsListing());

                          loginAPI();
                        },
                        child: Text("Login", style: TextStyle(fontSize: 20)),
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
                        Get.to(Register());
                      },
                      child: const Text(
                        "Don't have any Account?",
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
