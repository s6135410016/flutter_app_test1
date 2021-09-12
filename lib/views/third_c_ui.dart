import 'package:flutter/material.dart';

class ThirdCUI extends StatelessWidget {
  const ThirdCUI({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Icon(
          Icons.mobile_screen_share_outlined,
          color: Colors.white,
          size: 150.0,
        ),
      ),
      
    );
  }
}