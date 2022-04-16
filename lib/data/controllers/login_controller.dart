import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:qureos_auth_project/ui/landing_page.dart';

import '../../ui/widgets/progress_bar.dart';
import '../singleton.dart';

class LoginController extends GetxController{
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  login(String email, String password){
    Get.dialog(ProgressBar());
    Singleton.singleton.repository.login(email, password).then((value) {
      Get.back();
      Get.snackbar("Login", "${value.message}");
      if(value.code == 0){
        Singleton.singleton.cache.setEmail(value.data!.email!);
        Get.offAll(LandingPage());

      }
    },onError: (error){
      Get.back();
      Get.snackbar("Signup", "Something went wrong!");
    });
  }

  loginWithGoogle(){
    signInWithGoogle().then((user) {
      Singleton.singleton.cache.setEmail(user!.email!);
      Get.offAll(LandingPage());
    });
  }

  Future<User?> signInWithGoogle() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;

    final GoogleSignIn googleSignIn = GoogleSignIn();

    final GoogleSignInAccount? googleSignInAccount =
    await googleSignIn.signIn();

    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      try {
        final UserCredential userCredential =
        await auth.signInWithCredential(credential);

        user = userCredential.user;
      } on FirebaseAuthException catch (e) {
        if (e.code == 'account-exists-with-different-credential') {
          // handle the error here
        }
        else if (e.code == 'invalid-credential') {
          // handle the error here
        }
      } catch (e) {
        // handle the error here
      }
    }

    return user;
  }



}