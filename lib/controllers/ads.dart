import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:itktask/screens/my-ads.dart';

class AdsController extends GetxController {
  List ads = [].obs;
  List myAds = [].obs;
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
}
