import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../const.dart';
import '../../../core/viewmodel/home_viewmodel.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: HomeViewModel(),
      builder: (controller) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Categories",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 85,
              child: ListView.builder(
                itemCount: controller.categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black),
                        ),
                        child: Center(
                          child: Image.network(
                            controller.categories[index].image,
                            width: 35,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Text("Time"),
                    ],
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
