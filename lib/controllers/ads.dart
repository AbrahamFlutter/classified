import 'dart:io';
import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:image_picker/image_picker.dart';
import 'package:itktask/screens/ads-listing.dart';
import 'package:itktask/screens/my-ads.dart';

class AdsController extends GetxController {
  List ads = [].obs;
  List myAds = [].obs;
  String _imageURL =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8_RExXJpUqoSwMKLCJzbGxYkJ5EFnRTecKA&usqp=CAU";
  var firestore = FirebaseFirestore.instance;
  var auth = FirebaseAuth.instance;
  var _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  Random _rnd = Random();

  String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
      length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

  uploadImage() async {
    var filePath = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (filePath!.path.length != 0) {
      File file = File(filePath.path);
      var storageRef = await FirebaseStorage.instance
          .ref()
          .child("uploads")
          .child(getRandomString(12))
          .putFile(file);

      var uploadedURL = await storageRef.ref.getDownloadURL();

      _imageURL = uploadedURL;

      // FirebaseFirestore.instance
      //     .collection("myAds")
      //     .add({"imageURL": _imageURL});
    }
  }

  void CreateAd(title, price, mobile, description) {
    firestore.collection("myAds").add({
      "imageURL": _imageURL,
      "title": title,
      "price": price,
      "mobile": mobile,
      "description": description,
      "createdAt": FieldValue.serverTimestamp(),
      "uid": auth.currentUser!.uid
    }).then((value) {
      print("ad created");
      Get.to(AdsListing());
    }).catchError((e) => print(e));
  }

  void getAds() {
    firestore.collection("myAds").get().then((response) {
      if (response.docs.length > 0) {
        var tmp = [];
        response.docs.forEach((ads) {
          tmp.add({
            "id": ads.id,
            ...ads.data(),
          });
          // tmp.add({
          //   "id": task.id,
          //   "createdAt": task.data()['createdAt'],
          //   "status": task.data()['status'],
          //   "uid": task.data()['uid'],
          //   "title": task.data()['title'],
          // });
          // print(task.id);
          // print(task.data());
        });
        print(tmp);
        ads.assignAll(tmp);
        refresh();
      }
    });
  }

  void getMyAds() {
    firestore
        .collection("myAds")
        .where(
          'uid',
          isEqualTo: auth.currentUser!.uid,
        )
        .get()
        .then((response) {
      if (response.docs.length > 0) {
        var tmp = [];
        response.docs.forEach((myAds) {
          tmp.add({
            "id": myAds.id,
            ...myAds.data(),
          });
        });
        print(tmp);
        myAds.assignAll(tmp);
        refresh();
      }
    });
  }
}
