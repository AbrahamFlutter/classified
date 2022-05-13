import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:itktask/custom-widget/product-list.dart';
import 'package:http/http.dart' as http;

import '../util/constants.dart';

class MyAds extends StatefulWidget {
  const MyAds({Key? key}) : super(key: key);

  @override
  State<MyAds> createState() => _MyAdsState();
}

class _MyAdsState extends State<MyAds> {
  final nameData = GetStorage();
  var ads = {};
  var myAds = {};
  int j = 0;
  Future myAdsApi() async {
    var response = await http.get(Uri.parse(Constants().apiURL + "/ads"),
        headers: {"Accept": "application/json"});

    setState(() {
      ads = json.decode(response.body);
    });

    print(myAds);

    return "Success!";
  }

  @override
  void initState() {
    myAdsApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:
            AppBar(title: const Text("My Ads"), backgroundColor: Colors.black),
        body: Column(
          children: [
            Expanded(
              child: Container(
                child: ListView.builder(
                    itemCount: ads["data"].length,
                    itemBuilder: (BuildContext context, int index) {
                      return ProductList(
                          imageURL: ads["data"][index]["images"][0],
                          title: ads["data"][index]["title"],
                          price: ads["data"][index]["price"],
                          timesAgo: "5 days");
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
