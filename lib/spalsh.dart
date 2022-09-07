import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ryalize_task/data/controllers/splash_controller.dart';

import 'data/singleton.dart';

class Splash extends StatelessWidget {
  SplashController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Container(
        color: Colors.white,
        height: 300,
        child: Image(image: AssetImage(
          "${Singleton.singleton.assetImages.splashImage}"
        )),
      )),
    );
  }
}
