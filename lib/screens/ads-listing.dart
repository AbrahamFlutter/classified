import 'package:flutter/material.dart';
import 'package:itktask/custom-widget/product-card.dart';
import 'package:get/get.dart';
import 'package:itktask/screens/create-ad.dart';
import 'package:itktask/screens/settings.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:itktask/util/constants.dart';

import '../controllers/ads.dart';

class AdsListing extends StatefulWidget {
  AdsListing({Key? key}) : super(key: key);

  @override
  State<AdsListing> createState() => _AdsListingState();
}

class _AdsListingState extends State<AdsListing> {
  final AdsController _adsController = Get.put(AdsController());

  @override
  void initState() {
    print("\n"); //
    _adsController.getAds();
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
              backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8_RExXJpUqoSwMKLCJzbGxYkJ5EFnRTecKA&usqp=CAU"),
              radius: 20,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Obx(
          () => GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.70),
              itemCount: _adsController.ads.length,
              itemBuilder: (BuildContext context, int index) {
                return ProductCard(
                    imageSourse: _adsController.ads[index]["imageURL"],
                    productName: _adsController.ads[index]["title"],
                    productPrice: "\$" + _adsController.ads[index]["price"]);
              }),
        ),
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
