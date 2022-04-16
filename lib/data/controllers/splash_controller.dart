import 'dart:async';

import 'package:get/get.dart';
import 'package:qureos_auth_project/ui/Auth/login.dart';

class SplashController extends GetxController{
  moveToHome(){
    Timer(Duration(seconds: 5), ()=>Get.offAll(Login()));
  }
  @override
  void onInit() {
    moveToHome();
    super.onInit();
  }
}