import 'package:flutter/material.dart';

class FirstUI extends StatelessWidget {
  const FirstUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text(
          'First UI *0*',
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(
          Icons.add,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Center(
        child: Text(
          'เมธี สาลีวงษ์',
          style: TextStyle(
            fontSize: 35.0,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
