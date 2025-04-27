import 'package:get/get.dart';

import '../core/viewmodel/auth_viewmodel.dart';
import '../core/viewmodel/home_viewmodel.dart';
import '../core/viewmodel/main_viewmodel.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthViewModel());
    Get.lazyPut(() => MainViewModel());
    Get.lazyPut(() => HomeViewModel());
  }
}
