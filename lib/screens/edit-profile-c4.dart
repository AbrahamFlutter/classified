import 'package:flutter/material.dart';
import 'package:itktask/custom-widget/myButton.dart';
import 'package:itktask/custom-widget/myTextButton.dart';
import 'package:itktask/screens/login-c1.dart';
import '../../custom-widget/form.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Profile"),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16.0),
              height: 150,
              child: Image.asset("assets/images/sundar.png"),
            ),
            Container(
              height: 400,
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 18.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SelecInput(
                      selection: InputType.FullName,
                      formText: "Sundaravel",
                    ),
                    SelecInput(
                      selection: InputType.Email,
                      formText: "sundar@appmaking.com",
                    ),
                    SelecInput(
                      selection: InputType.MobileNum,
                      formText: "+919876543210",
                    ),
                    myButton(
                      buttonText: "Update profile",
                      screenToGo: Login(),
                    ),
                    myTextButton(
                      buttonText: "Log out",
                      screenToGo: Login(),
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
