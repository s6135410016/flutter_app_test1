import 'package:flutter/material.dart';

class ForthTappage2UI extends StatelessWidget {
  const ForthTappage2UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'สบายดี',
          style: TextStyle(
            fontFamily: 'Kanit',
            color: Colors.green,
            fontSize: 50.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
