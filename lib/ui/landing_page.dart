import 'package:flutter/material.dart';
import 'package:ryalize_task/data/singleton.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: Text("Hello ${Singleton.singleton.cache.getEmail()}",style: TextStyle(fontSize: 22,color: Colors.blue,),),
        ),
      ),
    );
  }
}
