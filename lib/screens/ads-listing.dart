import 'package:flutter/material.dart';
import 'package:itktask/custom-widget/product-card.dart';
import 'package:get/get.dart';
import 'package:itktask/screens/create-ad.dart';
import 'package:itktask/screens/settings.dart';

class AdsListing extends StatelessWidget {
  const AdsListing({Key? key}) : super(key: key);

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
        child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.70),
            children: const [
              //fututebuilder
              ProductCard(
                  imageSourse: "assets/images/mobile_2.jpeg",
                  productName: "Samsung",
                  productPrice: "\$8000"),
              ProductCard(
                  imageSourse: "assets/images/mobile_1.jpeg",
                  productName: "iPhone For Sale ",
                  productPrice: "\$33000"),
              ProductCard(
                  imageSourse: "assets/images/car_2.jpeg",
                  productName: "Maruti swift 2020 for sale",
                  productPrice: "\$8000"),
              ProductCard(
                  imageSourse: "assets/images/hourse_1.jpg",
                  productName: "Farm Land",
                  productPrice: "\$120000"),
              ProductCard(
                  imageSourse: "assets/images/car_1.jpeg",
                  productName: "Used Benz for sale",
                  productPrice: "\$8000"),
              ProductCard(
                  imageSourse: "assets/images/apple-macbook-pro-m1.jpeg",
                  productName: "Used Macbook for sale",
                  productPrice: "\$8000")
            ]),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(const CreateAd());
          },
          backgroundColor: Color.fromARGB(255, 255, 102, 14),
          child: const Icon(Icons.add_a_photo_outlined)),
    );
  }
}
