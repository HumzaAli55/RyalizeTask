import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: CircularProgressIndicator(
          backgroundColor: Colors.white,
        )
      ),
    );
  }
}
