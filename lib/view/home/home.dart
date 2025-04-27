import 'package:ecommerce/const.dart';
import 'package:ecommerce/view/home/widgets/best_seller.dart';
import 'package:ecommerce/view/home/widgets/categories.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 100.0,
          horizontal: 25,
        ).copyWith(bottom: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: "Search",
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.search),
              ),
            ),
            SizedBox(height: 20),
            Categories(),
            BestSeller(),
          ],
        ),
      ),
    );
  }
}
