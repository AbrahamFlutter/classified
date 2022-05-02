import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itktask/screens/login.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Register extends StatefulWidget {
  const Register({
    Key? key,
  }) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController _nameCtrl = TextEditingController();
  TextEditingController _passwordCtrl = TextEditingController();
  TextEditingController _emailCtrl = TextEditingController();
  TextEditingController _mobileCtrl = TextEditingController();

  registerAPI() async {
    var response = await http.post(
        Uri.parse("https://adlisting.herokuapp.com/auth/register"),
        headers: {"Content-type": "application/json"},
        body: json.encode({
          "name": _nameCtrl.text,
          "email": _emailCtrl.text,
          "mobile": _mobileCtrl.text,
          "password": _passwordCtrl.text,
        }));
    print("___________________________________________\n");
    print(json.decode(response.body));
    print(response.statusCode);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              height: 350,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 350,
                    child: Image.asset(
                      "assets/images/background.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 350,
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
              height: 400,
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 18.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextField(
                      controller: _emailCtrl,
                      decoration: InputDecoration(
                        labelText: "Email Address",
                        border: const OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    TextField(
                      controller: _passwordCtrl,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    TextField(
                      controller: _nameCtrl,
                      decoration: InputDecoration(
                        labelText: "Full Name",
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.name,
                    ),
                    TextField(
                      controller: _mobileCtrl,
                      decoration: InputDecoration(
                        labelText: "Mobile phone",
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          registerAPI();
                        },
                        child: Text("Register Now",
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
                        Get.to(Login());
                      },
                      child: Text(
                        "Alredy have an Account?",
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
