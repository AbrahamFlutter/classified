import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itktask/screens/contact-us.dart';
import 'package:itktask/screens/edit-profile.dart';
import 'package:itktask/screens/login.dart';
import 'package:itktask/screens/register.dart';
import 'package:get_storage/get_storage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
//EditProfile()ProfileScreen()