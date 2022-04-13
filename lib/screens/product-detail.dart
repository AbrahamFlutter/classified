import 'package:flutter/material.dart';
import 'package:itktask/custom-widget/myButton.dart';

class ProductDetail extends StatelessWidget {
  final String productTitle, productPrice, productImage, productTimeAgo;
  const ProductDetail({
    Key? key,
    required this.productTitle,
    required this.productPrice,
    required this.productImage,
    required this.productTimeAgo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.black),
        body: SafeArea(
            child: Container(
          padding: EdgeInsets.all(12.0),
          height: 700,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                productTitle,
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              Text(
                productPrice,
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 102, 14), fontSize: 20),
              ),
              Container(
                width: double.infinity,
                height: 300,
                margin: EdgeInsets.all(10.0),
                child: Image.asset(productImage, fit: BoxFit.cover),
              ),
              Container(
                  child: Row(
                children: [
                  Icon(Icons.person),
                  Text("Ali"),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.timer_outlined),
                  Text(productTimeAgo)
                ],
              )),
              Text(
                "Used model 2012, excellent conditions and price the best offer can you get rigth now!",
                style: TextStyle(fontSize: 20),
              ),
              myButton(buttonText: "Contact Seller", screenToGo: Null)
            ],
          ),
        )));
  }
}
