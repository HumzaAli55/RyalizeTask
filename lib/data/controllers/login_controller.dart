import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ryalize_task/ui/landing_page.dart';

import '../../ui/widgets/progress_bar.dart';
import '../singleton.dart';

class LoginController extends GetxController{
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  login(String email, String password){
    Get.dialog(ProgressBar());
    Singleton.singleton.repository.login(email, password).then((value) {
      Get.back(); // Get.back is used to close the progress dialog. Work just same as Navigator.pop()
      Get.snackbar("Login", "${value.message}");
      if(value.code == 0){ // 0 is returned on authentication success.
        Singleton.singleton.cache.setEmail(value.data!.email!);
        Get.offAll(LandingPage());
      }
    },onError: (error){

      //This block runs when there is an exception in the api.

      Get.back();
      Get.snackbar("Signup", "Something went wrong!");
    });
  }



}