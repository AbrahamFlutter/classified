import 'package:flutter/material.dart';
import 'package:itktask/custom-widget/myButton.dart';
import 'package:itktask/custom-widget/myTextButton.dart';
import 'package:itktask/screens/login-c1.dart';
import '../../custom-widget/form.dart';

class Register extends StatelessWidget {
  const Register({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
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
              height: 400,
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 18.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SelecInput(selection: InputType.Email),
                    SelecInput(selection: InputType.Password),
                    SelecInput(selection: InputType.FullName),
                    SelecInput(selection: InputType.MobileNum),
                    myButton(
                      buttonText: "Register Now",
                      screenToGo: Login(),
                    ),
                    myTextButton(
                      buttonText: "Alredy have an Account?",
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
