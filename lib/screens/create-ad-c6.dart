import 'package:flutter/material.dart';

import '../custom-widget/form.dart';
import '../custom-widget/myButton.dart';

class CreateAd extends StatelessWidget {
  const CreateAd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Create Ad"),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: ListView(children: [
          Container(
            margin: EdgeInsets.all(20.0),
            padding: EdgeInsets.only(left: 90, right: 90),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.grey),
                  padding: EdgeInsets.all(20.0)),
              onPressed: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.add_a_photo_outlined,
                    size: 80,
                    color: Colors.black,
                  ),
                  Text(
                    "Tap to upload",
                    style: TextStyle(
                        color: Color.fromARGB(255, 116, 116, 116),
                        fontSize: 20),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 500,
            margin: EdgeInsets.all(10.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SelecInput(selection: InputType.Title),
                  SelecInput(selection: InputType.Price),
                  SelecInput(selection: InputType.MobileNum),
                  SelecInput(selection: InputType.Description),
                  myButton(
                    buttonText: "Submit Ad",
                    screenToGo: null,
                  ),
                ]),
          )
        ]),
      ),
    );
  }
}
