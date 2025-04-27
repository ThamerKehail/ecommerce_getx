import 'package:cloud_firestore/cloud_firestore.dart';

class CategoryModel {
  final String name;
  final String image;

  CategoryModel({required this.name, required this.image});

  factory CategoryModel.fromJson(DocumentSnapshot json) {
    final data = json.data() as Map<String, dynamic>;

    return CategoryModel(name: data['name'] ?? '', image: data['image'] ?? '');
  }

  Map<String, dynamic> toJson() {
    return {'name': name, 'image': image};
  }
}
