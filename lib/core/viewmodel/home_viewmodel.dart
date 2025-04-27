import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/model/categry_model.dart';
import 'package:get/get.dart';

import '../service/firestore_category.dart';

class HomeViewModel extends GetxController {
  @override
  void onInit() {
    _getCategories();
    super.onInit();
  }

  final CollectionReference _userCollection = FirebaseFirestore.instance
      .collection("categories");

  List<CategoryModel> categories = [];

  _getCategories() async {
    await _userCollection.get().then((data) {
      for (var element in data.docs) {
        CategoryModel categoryModel = CategoryModel.fromJson(element);
        categories.add(categoryModel);
      }

      update();
      print(categories);
    });
  }
}
