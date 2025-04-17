import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/viewmodel/auth_viewmodel.dart';
import 'auth/login_screen.dart';
import 'home.dart';

class ControlView extends GetWidget<AuthViewModel> {
  const ControlView({super.key});

  @override
  Widget build(BuildContext context) {
    return controller.user == null ? LoginScreen() : HomeScreen();
  }
}
