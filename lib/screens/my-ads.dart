import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:itktask/custom-widget/product-list.dart';
import 'package:http/http.dart' as http;

import '../controllers/ads.dart';
import '../util/constants.dart';

class MyAds extends StatefulWidget {
  const MyAds({Key? key}) : super(key: key);

  @override
  State<MyAds> createState() => _MyAdsState();
}

class _MyAdsState extends State<MyAds> {
  final AdsController _adsController = Get.put(AdsController());

  @override
  void initState() {
    _adsController.getMyAds();
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
                child: Obx(
                  () => ListView.builder(
                      itemCount: _adsController.myAds.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ProductList(
                            imageURL: _adsController.myAds[index]["imageURL"],
                            title: _adsController.myAds[index]["title"],
                            price: _adsController.myAds[index]["price"],
                            timesAgo: "2 hours",
                            //_adsController.myAds[index]["createdAt"],
                            mobile: _adsController.myAds[index]["mobile"]);
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
