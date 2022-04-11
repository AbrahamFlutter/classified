import 'package:flutter/material.dart';
import 'package:itktask/custom-widget/product-card.dart';

class AdsListing extends StatelessWidget {
  const AdsListing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black),
      body: SafeArea(
        child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.90),
            children: [
              ProductCard(
                  imageSourse: "assets/images/mobile_1.jpeg",
                  productName: "Samsung",
                  productPrice: "\$8000")
            ]),
      ),
    );
  }
}
