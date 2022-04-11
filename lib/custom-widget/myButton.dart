import 'package:flutter/material.dart';

class myButton extends StatelessWidget {
  final String buttonText;
  const myButton({Key? key, required this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 44,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(buttonText, style: TextStyle(fontSize: 20)),
        style: ElevatedButton.styleFrom(
          primary: const Color.fromARGB(225, 255, 0, 76),
          //padding: EdgeInsets.symmetric(vertical: 10.0),
          //fixedSize: Size.
        ),
      ),
    );
  }
}
