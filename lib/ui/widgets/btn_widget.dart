import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget{
 final void Function() onClick;
 final String? text;

 ButtonWidget({required this.onClick, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Center(child: Text("$text",style: TextStyle(fontSize: 20,color: Colors.white,),)),
      ),
    );
  }

}