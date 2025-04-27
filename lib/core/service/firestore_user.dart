import 'package:cloud_firestore/cloud_firestore.dart';

import '../../model/user_model.dart';

class FireStoreUser {
  final CollectionReference _userCollection = FirebaseFirestore.instance
      .collection("users");

  Future<void> addUserData({required UserModel user}) async {
    try {
      await _userCollection.doc(user.userId).set(user.toJson());
    } catch (e) {
      print(e);
    }
  }
}
