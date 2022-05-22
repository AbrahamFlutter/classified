import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AdsController extends GetxController {
  List ads = [].obs;
  var firestore = FirebaseFirestore.instance;
  var auth = FirebaseAuth.instance;
  void CreateAd(title, price, mobile, description) {
    firestore.collection("myAds").add({
      // "image": imageUrl,
      "title": title,
      "price": price,
      "mobile": mobile,
      "description": description,
      "createdAt": FieldValue.serverTimestamp(),
      "uid": auth.currentUser!.uid
    }).then((value) {
      print("ad created");
    }).catchError((e) => print(e));
    ;
  }
}
