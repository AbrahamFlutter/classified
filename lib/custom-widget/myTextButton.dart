import 'package:flutter/material.dart';
import 'package:get/get.dart';

class myTextButton extends StatelessWidget {
  myTextButton({Key? key, required this.buttonText, required this.screenToGo})
      : super(key: key);
  final String buttonText;
  var screenToGo;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Color.fromARGB(255, 255, 102, 14),
          padding: const EdgeInsets.all(16.0),
        ),
        onPressed: () {
          Get.to(screenToGo);
        },
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
