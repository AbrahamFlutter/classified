import 'package:flutter/material.dart';
import 'package:itktask/custom-widget/myButton.dart';
import 'package:itktask/custom-widget/myTextButton.dart';
import 'package:itktask/screens/ads-listing-c3.dart';
import 'package:itktask/screens/register-c2.dart';
import '../custom-widget/form.dart';

class Login extends StatelessWidget {
  const Login({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              height: 300,
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 18.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SelecInput(selection: InputType.Email),
                    SelecInput(selection: InputType.Password),
                    myButton(
                      buttonText: "Login",
                      screenToGo: AdsListing(),
                    ),
                    myTextButton(
                      buttonText: "Don't have any Account?",
                      screenToGo: Register(),
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
