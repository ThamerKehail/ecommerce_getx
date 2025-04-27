import 'package:ecommerce/view/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/viewmodel/main_viewmodel.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: MainViewModel(),
      builder: (controller) {
        return Scaffold(
          body: controller.getScreen(),
          bottomNavigationBar: _buildBottomNavigationBar(),
        );
      },
    );
  }

  Widget _buildBottomNavigationBar() {
    return GetBuilder(
      init: MainViewModel(),
      builder: (controller) {
        return BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "",
              activeIcon: Text("Home"),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Icon(Icons.shopping_cart),
              activeIcon: Text("Cart"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "",
              activeIcon: Text("Profile"),
            ),
          ],

          currentIndex: controller.currentIndex,
          onTap: (index) {
            controller.changeIndex(index);
          },
        );
      },
    );
  }
}
