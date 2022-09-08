import 'dart:async';

import 'package:get/get.dart';
import 'package:ryalize_task/data/singleton.dart';
import 'package:ryalize_task/ui/Auth/login.dart';
import 'package:ryalize_task/ui/landing_page.dart';

class SplashController extends GetxController{
  moveToHome(){

    //if cache is not empty then move to the home page otherwise user will login again.

    if(Singleton.singleton.cache.getEmail() == null) {
      Timer(Duration(seconds: 5), () => Get.offAll(Login()));
    }else{
      Timer(Duration(seconds: 5), () => Get.offAll(LandingPage()));
    }
  }




  @override
  void onInit() {
    moveToHome();
    super.onInit();
  }
}