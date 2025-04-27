import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/model/categry_model.dart';

import '../../model/user_model.dart';

class FireStoreCategory {
  final CollectionReference _userCollection = FirebaseFirestore.instance
      .collection("categories");

  Future<List<CategoryModel>> getCategories() async {
    try {
      await _userCollection.get().then((data) {
        List<CategoryModel> categories = [];

        for (var element in data.docs) {
          CategoryModel categoryModel = CategoryModel.fromJson(element);
          categories.add(categoryModel);
        }
        return categories;
      });
    } catch (e) {
      print(e);
    }
    return [];
  }
}
