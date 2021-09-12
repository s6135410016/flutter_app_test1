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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero, 
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'เมธี สาลีวงษ์',
              ),
              accountEmail: Text(
                'ID : 6135410016',
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/myprofile.jpg',
                ),
              ),
              otherAccountsPictures: [
                Image.asset(
                  'assets/images/saulogo.png',
                ),
              ],      
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/bgdrawer.png',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            ListTile(
              onTap: (){},
              title: Text(
                'หน้าแรก',
              ),
            ),    
            ListTile(
              onTap: (){},
              title: Text(
                'ตารางสอน',
              ),
              leading: Icon(
                Icons.home,
                color: Colors.pink,
              ),
            ),     
            ListTile(
              onTap: (){},
              title: Text(
                'ตารางสอบ',
              ),
              leading: Icon(
                Icons.ac_unit_sharp,
              ),
              trailing: Text(
                '999',
                style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Divider(
              color: Colors.red,
            ),
            ListTile(
              onTap: (){},
              title: Text(
              'menu 4 .....',
              style: TextStyle(
                color: Colors.green,
              ),
              ),
              trailing: Icon(
                Icons.access_alarm,
                color: Colors.cyanAccent,
              ),
            ),
            Divider(),
            ListTile(
              onTap: (){},
              title: Text(
                'จบการทำงาน',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20.0,
                ),
              ),
              trailing: Icon(
                Icons.exit_to_app,
              ),
            ),
          ],
        ),
      ),   
    );
  }
}
