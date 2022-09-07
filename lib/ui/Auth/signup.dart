import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ryalize_task/data/controllers/signup_controller.dart';
import 'package:ryalize_task/ui/widgets/btn_widget.dart';
import 'package:ryalize_task/ui/widgets/text_edit_field.dart';

import '../../data/singleton.dart';
import 'login.dart';

class Signup extends StatelessWidget {
  SignupController controller = Get.find();
  final GlobalKey<FormState>formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                      height: 170,
                      image: AssetImage(
                      "${Singleton.singleton.assetImages.logo}"
                  )),

                  SizedBox(height: 30,),

                  TextEditField(controller: controller.emailController, hint: "Email", icon: Icon(
                    Icons.email,
                    color: Colors.grey,
                  ),
                    obscureCheck: false, validatorFunc: (value) =>
                      value.isEmpty ? 'Text Field cannot be blank' : null),



                  SizedBox(height: 20,),

                  TextEditField(controller: controller.nameController, hint: "Name", icon: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                    obscureCheck: false, validatorFunc: (value) =>
                      value.isEmpty ? 'Text Field cannot be blank' : null),


                  SizedBox(height: 20,),

                  TextEditField(controller: controller.passwordController, hint: "Password", icon: Icon(
                    Icons.password,
                    color: Colors.grey,
                  ),
                    obscureCheck: true, validatorFunc: (value) =>
                      value.isEmpty ? 'Text Field cannot be blank' : null),

                  SizedBox(height: 20,),

                  ButtonWidget(onClick: (){
                    if(formKey.currentState!.validate()) {
                      controller.signup(controller.nameController.text,
                          controller.emailController.text,
                          controller.passwordController.text);
      }
                 }, text: "Register"),

                  SizedBox(height: 20,),

                  ButtonWidget(onClick:(){
                    Get.to(Login());
                  },text: "Click here to login"),



                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
