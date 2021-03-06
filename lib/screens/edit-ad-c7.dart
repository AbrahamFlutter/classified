import 'package:flutter/material.dart';
import 'package:itktask/screens/ads-listing-c3.dart';

import '../custom-widget/form.dart';
import '../custom-widget/myButton.dart';

class EditAd extends StatelessWidget {
  final String photo;
  String? textToTitle, textToPrice, textToPhone;
  EditAd(
      {Key? key,
      required this.photo,
      this.textToTitle,
      this.textToPrice,
      this.textToPhone})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Edit Ad"),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: ListView(children: [
          Container(
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.only(left: 90, right: 90),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.grey),
                  padding: EdgeInsets.all(20.0)),
              onPressed: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
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
            height: 550,
            margin: EdgeInsets.all(10.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      child: Row(
                    children: [
                      Container(
                          width: 80,
                          height: 60,
                          margin: EdgeInsets.all(8.0),
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                              border: Border.all(
                            color: Colors.grey,
                          )),
                          child: Image.asset(
                            photo,
                            fit: BoxFit.cover,
                          )),
                      Container(
                          width: 80,
                          height: 60,
                          margin: EdgeInsets.all(8.0),
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                              border: Border.all(
                            color: Colors.grey,
                          )),
                          child: Image.asset(photo, fit: BoxFit.cover)),
                      Container(
                          width: 80,
                          height: 60,
                          margin: EdgeInsets.all(8.0),
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                              border: Border.all(
                            color: Colors.grey,
                          )),
                          child: Image.asset(photo, fit: BoxFit.cover)),
                    ],
                  )),
                  SelecInput(
                    selection: InputType.Title,
                    formText: textToTitle,
                  ),
                  SelecInput(
                    selection: InputType.Price,
                    formText: textToPrice,
                  ),
                  SelecInput(
                    selection: InputType.MobileNum,
                    formText: textToPhone,
                  ),
                  SelecInput(
                    selection: InputType.Description,
                    formText:
                        """Used model 2012, excellent conditions and price the best offer can you get rigth now! 
""",
                  ),
                  myButton(
                    buttonText: "Submit Ad",
                    screenToGo: AdsListing(),
                  ),
                ]),
          )
        ]),
      ),
    );
  }
}
