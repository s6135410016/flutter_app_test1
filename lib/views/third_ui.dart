import 'package:flutter/material.dart';
import 'package:flutter_app_test1/views/third_a_ui.dart';
import 'package:flutter_app_test1/views/third_b_ui.dart';
import 'package:flutter_app_test1/views/third_c_ui.dart';
import 'package:flutter_app_test1/views/third_d_ui.dart';

class ThirdUI extends StatefulWidget {
  const ThirdUI({Key? key}) : super(key: key);

  @override
  _ThirdUIState createState() => _ThirdUIState();
}

class _ThirdUIState extends State<ThirdUI> {
  List page = [
    ThirdAUI(),
    ThirdBUI(),
    ThirdCUI(),
    ThirdDUI(),
  ];

  int currenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'Third UI',
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currenIndex = value;
          });
        },
        currentIndex: currenIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey[200],
        selectedItemColor: Colors.purple,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'page A',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.access_time_filled_outlined,
            ),
            label: 'page B',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.ad_units_sharp,
            ),
            label: 'page C',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.ice_skating,
            ),
            label: 'page D',
          ),
        ],
      ),
      body: page.elementAt(currenIndex),
    );
  }
}
