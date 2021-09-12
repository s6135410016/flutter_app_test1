import 'package:flutter/material.dart';

class ThirdAUI extends StatelessWidget {
  const ThirdAUI({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Icon(
          Icons.home,
          size: 150.0,
          color: Colors.white,
        ),
      ),
    );
  }
}