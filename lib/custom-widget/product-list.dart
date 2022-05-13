import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/edit-ad.dart';
//import 'package:project_name/screens/product-detail.dart';

class ProductList extends StatelessWidget {
  final String imageURL;
  final String title;
  final int price;
  final String timesAgo;

  const ProductList({
    Key? key,
    required this.imageURL,
    required this.title,
    required this.price,
    required this.timesAgo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () {
      //   Get.to(ProductDetailScreen(
      //     ptitle: title,
      //     pprice: price,
      //     ptimesAgo: timesAgo,
      //     pimageURL: imageURL,
      //     pdescription: "description",
      //   ));
      // },
      onTap: () {
        Get.to(EditAd(
          photo: imageURL,
          textToTitle: title,
          textToPhone: "+9898745321",
          textToPrice: price.toString(),
        ));
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
        ),
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(8),
        child: Row(children: [
          Container(
            height: 100,
            width: 100,
            child: Image.asset(imageURL),
          ),
          SizedBox(width: 8),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(children: [
                  Icon(
                    Icons.timer_outlined,
                    size: 12,
                  ),
                  Text(timesAgo)
                ]),
                Text(
                  price.toString(),
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 102, 14),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
