import 'package:flutter/material.dart';
import 'package:itktask/custom-widget/product-card.dart';
import 'package:get/get.dart';
import 'package:itktask/screens/create-ad.dart';
import 'package:itktask/screens/settings.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:itktask/util/constants.dart';

class AdsListing extends StatefulWidget {
  const AdsListing({Key? key}) : super(key: key);

  @override
  State<AdsListing> createState() => _AdsListingState();
}

class _AdsListingState extends State<AdsListing> {
  var ads = {};
  Future adsApi() async {
    var response = await http.get(Uri.parse(Constants().apiURL + "/ads"),
        headers: {"Accept": "application/json"});
    setState(() {
      ads = json.decode(response.body);
    });

    print(ads["data"][1]["title"]);
    return "Success!";
  }

  @override
  void initState() {
    adsApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ads Listing"),
        backgroundColor: Colors.black,
        actions: [
          GestureDetector(
            onTap: () {
              Get.to(Settings());
            },
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/sundar.png"),
              radius: 20,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.70),
            itemCount: ads["data"].length,
            itemBuilder: (BuildContext context, int index) {
              return ProductCard(
                  imageSourse: ads["data"][index]["images"][0],
                  productName: ads["data"][index]["title"],
                  productPrice: ads["data"][index]["price"].toString());
            }),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(CreateAd());
          },
          backgroundColor: Color.fromARGB(255, 255, 102, 14),
          child: const Icon(Icons.add_a_photo_outlined)),
    );
  }
}
