import 'package:flutter/material.dart';

class ThirdBUI extends StatelessWidget {
  const ThirdBUI({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Center(
        child: Icon(
          Icons.access_time_filled_outlined,
          color: Colors.white,
          size: 150.0,
        ),
      ),
      
      
    );
  }
}