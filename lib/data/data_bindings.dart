import 'package:get/get.dart';
import 'package:ryalize_task/data/controllers/login_controller.dart';
import 'package:ryalize_task/data/controllers/splash_controller.dart';

import 'controllers/signup_controller.dart';

class DataBindings implements Bindings{
  @override
  void dependencies() {

    /*All the controllers are created here but not loaded in the memory yet. We are initializing Binding at
    the start of the app*/


    Get.lazyPut(() => SplashController());
    Get.lazyPut(() => LoginController(),fenix: true);
    Get.lazyPut(() => SignupController(),fenix: true);
  }
}