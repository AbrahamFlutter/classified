import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/ads.dart';

class CreateAd extends StatelessWidget {
  CreateAd({Key? key}) : super(key: key);

  final AdsController _adsController = Get.put(AdsController());
  final TextEditingController _titleCtrl = TextEditingController();
  final TextEditingController _priceCtrl = TextEditingController();
  final TextEditingController _mobileCtrl = TextEditingController();
  final TextEditingController _descriptionCtrl = TextEditingController();
  //var _imageURL = "";
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
              onPressed: () {
                _adsController.uploadImage();
              },
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
                          fontSize: 16),
                    )
                  ]),
            ),
          ),
          Container(
            height: 500,
            margin: EdgeInsets.all(10.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextField(
                    controller: _titleCtrl,
                    decoration: InputDecoration(
                      labelText: "Title",
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  TextField(
                    controller: _priceCtrl,
                    decoration: InputDecoration(
                      labelText: "Price",
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  TextField(
                    controller: _mobileCtrl,
                    decoration: InputDecoration(
                      labelText: "Mobile phone",
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                  TextField(
                    controller: _descriptionCtrl,
                    maxLines: 5,
                    decoration: InputDecoration(
                      labelText: "Description",
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        _adsController.CreateAd(
                            _titleCtrl.text,
                            _priceCtrl.text,
                            _mobileCtrl.text,
                            _descriptionCtrl.text);
                      },
                      child: Text("Submit Ad", style: TextStyle(fontSize: 20)),
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(225, 255, 102, 14),
                      ),
                    ),
                  ),
                ]),
          )
        ]),
      ),
    );
  }
}
