import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:itktask/screens/ads-listing.dart';
import 'package:itktask/screens/login.dart';

class ValidateScreen extends StatefulWidget {
  const ValidateScreen({Key? key}) : super(key: key);

  @override
  State<ValidateScreen> createState() => _ValidateScreenState();
}

class _ValidateScreenState extends State<ValidateScreen> {
  bool _isLogged = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  validateUser() {
    FirebaseAuth.instance.authStateChanges().listen((user) {
      if (user != null) {
        setState(() {
          _isLogged = true;
        });
      } else {
        setState(() {
          _isLogged = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return _isLogged ? AdsListing() : Login();
  }
}
