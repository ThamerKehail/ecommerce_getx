import 'package:ecommerce/view/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../view/cart/cart_screen.dart';
import '../../view/profile/profile_screen.dart';

class MainViewModel extends GetxController {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  void changeIndex(int index) {
    _currentIndex = index;
    update();
  }

  List<Widget> screens = [
    const HomeScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];

  Widget getScreen() {
    return screens[_currentIndex];
  }
}
