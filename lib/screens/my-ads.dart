import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itktask/custom-widget/product-list.dart';

class MyAds extends StatelessWidget {
  const MyAds({Key? key}) : super(key: key);

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
                child: ListView(
                  children: const [
                    ProductList(
                      title: "Android",
                      price: 4000,
                      timesAgo: "20 mins ago",
                      imageURL: "assets/images/mobile_2.jpeg",
                    ),
                    ProductList(
                      title: "iPhone",
                      price: 20000,
                      timesAgo: "15 mins ago",
                      imageURL: "assets/images/mobile_1.jpeg",
                    ),
                    ProductList(
                      title: "Macbook",
                      price: 40000,
                      timesAgo: "3 mins ago",
                      imageURL: "assets/images/apple-macbook-pro-m1.jpeg",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
