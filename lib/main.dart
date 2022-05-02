import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itktask/screens/edit-profile.dart';
import 'package:itktask/screens/login.dart';
import 'package:itktask/screens/register.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: EditProfile(),
    );
  }
}
//EditProfile()ProfileScreen()