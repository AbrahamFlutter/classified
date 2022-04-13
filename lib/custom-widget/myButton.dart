import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../screens/register-c2.dart';

class myButton extends StatelessWidget {
  final String buttonText;
  var screenToGo;
  myButton({Key? key, required this.buttonText, required this.screenToGo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          Get.to(screenToGo);
        },
        child: Text(buttonText, style: TextStyle(fontSize: 20)),
        style: ElevatedButton.styleFrom(
          primary: const Color.fromARGB(225, 255, 102, 14),
          //padding: EdgeInsets.symmetric(vertical: 10.0),
          //fixedSize: Size.
        ),
      ),
    );
  }
}
