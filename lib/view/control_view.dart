import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/viewmodel/auth_viewmodel.dart';
import 'auth/login_screen.dart';
import 'home/home.dart';
import 'main_view/main_view.dart';

class ControlView extends GetWidget<AuthViewModel> {
  const ControlView({super.key});

  @override
  Widget build(BuildContext context) {
    return controller.user == null ? LoginScreen() : MainView();
  }
}
