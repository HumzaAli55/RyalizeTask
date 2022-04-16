import 'package:get/get.dart';
import 'package:qureos_auth_project/data/controllers/login_controller.dart';
import 'package:qureos_auth_project/data/controllers/splash_controller.dart';

import 'controllers/signup_controller.dart';

class DataBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
    Get.lazyPut(() => LoginController(),fenix: true);
    Get.lazyPut(() => SignupController(),fenix: true);
  }
}