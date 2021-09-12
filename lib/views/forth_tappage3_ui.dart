import 'package:flutter/material.dart';

class ForthTappage3UI extends StatelessWidget {
  const ForthTappage3UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'ราตีสวัสดิ์',
          style: TextStyle(
            fontFamily: 'Kanit',
            color: Colors.red,
            fontSize: 50.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
