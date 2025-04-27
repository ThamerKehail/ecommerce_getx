import 'package:flutter/material.dart';

class BestSeller extends StatelessWidget {
  const BestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Best Seller",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text("See all"),
          ],
        ),
        SizedBox(height: 20),
        SizedBox(
          height: 270,
          child: ListView.builder(
            itemCount: 8,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 160,
                    height: 220,
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                    ),
                  ),
                  Text("Product name"),
                  Text("150 JD"),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
