import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qureos_auth_project/data/controllers/login_controller.dart';
import 'package:qureos_auth_project/ui/Auth/signup.dart';

import '../../data/singleton.dart';

class Login extends StatelessWidget {
  LoginController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(image: AssetImage(
                    "${Singleton.singleton.assetImages.logo}"
                )),

      SizedBox(height: 20,),

      TextFormField(
            controller: controller.emailController,
            style: TextStyle(
              fontSize: 24,
              color: Colors.blue,
              fontWeight: FontWeight.w600,
            ),

            decoration: InputDecoration(
              focusColor: Colors.white,
              //add prefix icon
              prefixIcon: Icon(
                Icons.email,
                color: Colors.grey,
              ),

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),

              focusedBorder: OutlineInputBorder(
                borderSide:
                const BorderSide(color: Colors.blue, width: 1.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              fillColor: Colors.grey,

              hintText: "Email",

              //make hint text
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontFamily: "verdana_regular",
                fontWeight: FontWeight.w400,
              ),

              //create lable
              labelText: 'Email',
              //lable style
              labelStyle: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontFamily: "verdana_regular",
                fontWeight: FontWeight.w400,
              ),
            ),
      ),

            SizedBox(height: 20,),

                TextFormField(
                  controller: controller.passwordController,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                  ),

                  decoration: InputDecoration(
                    focusColor: Colors.white,
                    //add prefix icon
                    prefixIcon: Icon(
                      Icons.password,
                      color: Colors.grey,
                    ),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.blue, width: 1.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    fillColor: Colors.grey,

                    hintText: "Password",

                    //make hint text
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontFamily: "verdana_regular",
                      fontWeight: FontWeight.w400,
                    ),

                    //create lable
                    labelText: 'Password',
                    //lable style
                    labelStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontFamily: "verdana_regular",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 20,),

                GestureDetector(
                  onTap: (){
                    controller.login(controller.emailController.text,
                    controller.passwordController.text);
                  },
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Text("Login",style: TextStyle(fontSize: 20,color: Colors.white,),)),
                  ),
                ),

                SizedBox(height: 20,),

                GestureDetector(
                    onTap: (){
                      Get.to(Signup());
                    },
                    child: Text("Click here to signup!",style: TextStyle(fontSize: 20,color: Colors.blue,),)),



                SizedBox(height: 20,),

                Text("Or",style: TextStyle(fontSize: 20,color: Colors.blue,),),


                SizedBox(height: 20,),
                GestureDetector(
                  onTap: (){
                    controller.loginWithGoogle();
                  },
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Text("signIn with Google",style: TextStyle(fontSize: 20,color: Colors.white,),)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
