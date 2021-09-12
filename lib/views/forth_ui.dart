import 'package:flutter/material.dart';
import 'package:flutter_app_test1/views/forth_tappage1_ui.dart';
import 'package:flutter_app_test1/views/forth_tappage2_ui.dart';
import 'package:flutter_app_test1/views/forth_tappage3_ui.dart';
import 'package:flutter_app_test1/views/forth_tappage4_ui.dart';
import 'package:flutter_app_test1/views/forth_tappage5_ui.dart';
import 'package:flutter_app_test1/views/forth_tappage6_ui.dart';

class ForthUI extends StatefulWidget {
  const ForthUI({Key? key}) : super(key: key);

  @override
  _ForthUIState createState() => _ForthUIState();
}

class _ForthUIState extends State<ForthUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        title: Text(
          'ยินดีต้อนรับ @0@',
          style: TextStyle(
            fontFamily: 'Kanit',
          ),
        ),
        centerTitle: true,
      ),
      body: DefaultTabController(
        length: 6,
        child: Column(
          children: [
            Container(
              color: Colors.green[100],
              child: TabBar(
                isScrollable: true,
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.green,
                indicatorColor: Colors.green[800],
                tabs: [
                  Tab(
                    text: 'tab page 1',
                  ),
                  Tab(
                    text: 'tab page 2',
                  ),
                  Tab(
                    text: 'tab page 3',
                  ),
                  Tab(
                    text: 'tab page 4',
                  ),
                  Tab(
                    text: 'tab page 5',
                  ),
                  Tab(
                    text: 'tab page 6',
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ForthTabpage1UI(),
                  ForthTappage2UI(),
                  ForthTappage3UI(),
                  ForthTappage4UI(),
                  ForthTappage5UI(),
                  ForthTappage6UI(),
                ],
              ),
            ),
          ],
        ),
      ),
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
