import 'package:flutter/material.dart';

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
    return Container(
      height: 300,
      width: 300,
      //color: Color.fromARGB(176, 35, 250, 82),
      // decoration: BoxDecoration(
      //   border: Border.all(color: Color.fromARGB(221, 117, 117, 117), width: 2),
      // ),
      child: Stack(
        children: [
          Container(
            width: 300,
            height: 300,
            child: Image.asset(
              imageSourse,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Icon(
                Icons.favorite_border,
                color: Color.fromARGB(225, 255, 0, 76),
                size: 40,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 80,
              color: Color.fromARGB(117, 0, 0, 0),
              child: Container(
                padding: EdgeInsets.only(left: 15.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        productName,
                        style: TextStyle(fontSize: 25, color: Colors.white),
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
    );
  }
}
