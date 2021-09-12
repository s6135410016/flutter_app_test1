import 'package:flutter/material.dart';

class ForthTappage4UI extends StatelessWidget {
  const ForthTappage4UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'บ๊าย บาย',
          style: TextStyle(
            fontFamily: 'Kanit',
            color: Colors.blue,
            fontSize: 50.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
