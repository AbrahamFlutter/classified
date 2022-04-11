import 'package:flutter/material.dart';
import 'package:itktask/custom-widget/myButton.dart';
import 'package:itktask/custom-widget/myTextButton.dart';
import 'package:itktask/screens/ads-listing.dart';
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
              height: 260,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 260,
                    child: Image.asset(
                      "assets/images/whiteHouse.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 260,
                    padding: EdgeInsets.all(12.0),
                    color: Color.fromARGB(158, 255, 255, 255),
                    // ignore: prefer_const_constructors
                    child: Center(
                      child: const ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 30),
                        leading: Icon(
                          Icons.chair,
                          size: 90,
                          color: Color.fromARGB(225, 255, 0, 76),
                        ),
                        title: Text(
                          "\nSOFA WORLD",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text("Buy at any place",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 500,
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
