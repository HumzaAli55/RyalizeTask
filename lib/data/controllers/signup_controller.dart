import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ryalize_task/data/singleton.dart';
import 'package:ryalize_task/ui/Auth/login.dart';

import '../../ui/landing_page.dart';
import '../../ui/widgets/progress_bar.dart';

class SignupController extends GetxController{
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  signup(String name,String email,String password){
    Get.dialog(ProgressBar());
    Singleton.singleton.repository.signup(name, email, password).then((value) {
      Get.back(); // Get.back is used here to close the progress dialog. Work just same as Navigator.pop()
      Get.snackbar("Signup", "${value.message}");
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