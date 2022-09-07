import 'package:flutter/material.dart';

class TextEditField extends StatelessWidget{
 final TextEditingController? controller;
 final String? hint;
 final Icon icon;
 final bool obscureCheck;
 String? Function(dynamic) validatorFunc;

  TextEditField({required this.controller, required this.hint, required this.icon,
    required this.obscureCheck, required this.validatorFunc});

  @override
  Widget build(BuildContext context) {
   return Container(
     height: 65,
     child: TextFormField(
        controller: controller,
        obscureText: obscureCheck,
        validator: validatorFunc,
        style: TextStyle(
          fontSize: 16,
          color: Colors.blue,
          fontWeight: FontWeight.w600,
        ),

        decoration: InputDecoration(
          focusColor: Colors.white,
          //add prefix icon
          prefixIcon: icon,

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),

          focusedBorder: OutlineInputBorder(
            borderSide:
            const BorderSide(color: Colors.blue, width: 1.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
          fillColor: Colors.grey,

          hintText: "$hint",

          //make hint text
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 14,
            fontFamily: "verdana_regular",
            fontWeight: FontWeight.w400,
          ),



          //create lable
          labelText: '$hint',
          //lable style
          labelStyle: TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontFamily: "verdana_regular",
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
   );
  }

}