import 'package:flutter/material.dart';
import 'package:itktask/screens/product-detail.dart';
import 'package:get/get.dart';

class ProductCard extends StatelessWidget {
  final String imageSourse, productName, productPrice;
  const ProductCard(
      {Key? key,
      required this.imageSourse,
      required this.productName,
      required this.productPrice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(ProductDetail(
            productTitle: productName,
            productPrice: productPrice,
            productImage: imageSourse,
            productTimeAgo: "2 days ago"));
      },
      child: Container(
        height: 300,
        width: 500,
        child: Stack(
          children: [
            Container(
              width: 300,
              height: 500,
              margin: EdgeInsets.all(10.0),
              child: Image.asset(
                imageSourse,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 70,
                color: Color.fromARGB(117, 0, 0, 0),
                child: Container(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          productName,
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text(productPrice,
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 137, 3))),
                      ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
