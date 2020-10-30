import 'package:flutter/material.dart';
import './page2/pages.dart' show PagesPage;
import 'page2/find.dart' show FindScreen;
import './page2/airplay.dart' show AirplayPage;
import 'page2/management.dart' show ManagerScreen ;
 // 初见Flutter

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}
 var _currentIndex = 0;
 var page;
 List listItem = [
   ManagerScreen(),
   FindScreen(),
   PagesPage(),
   AirplayPage(),
 ];
class _BottomBarState extends State<BottomBar> {
  // 动态组件 必须要写动态组件初始化方法才可以初始化页面
  @override
  void initState() {
    page = listItem[_currentIndex];
    listItem
    ..add('2');
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page,
      bottomNavigationBar: BottomNavigationBar(
          // unselectedItemColor: Colors.red,
          selectedItemColor: Color.fromARGB(255, 242, 89, 63),
          // selectedItemColor: Colors.white,
          // backgroundColor: Theme.of(context).primaryColorDark,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/invite_normal.png',
                width: 24, height: 24,
              ),
              // ignore: deprecated_member_use
              title: Text('好友'),
              activeIcon: Image.asset(
                'assets/images/invite_selected.png',
                width: 24, height: 24,
              ),
            ),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/discovery_normal.png',
                  width: 24, height: 24
                ),
                // ignore: deprecated_member_use
                title: new Text('发现'),
                activeIcon: Image.asset(
                  'assets/images/discovery_selected.png',
                  width: 24, height: 24
                )
            ),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/manager_normal.png',
                  width: 24, height: 24
                ),
                // ignore: deprecated_member_use
                title: new Text('管理'),
                activeIcon: Image.asset(
                  'assets/images/manager_selected.png',
                  width: 24, height: 24
                )
            ),
            new BottomNavigationBarItem(
              // icon: Icon(
              //   Icons.airplay,
              //   // color: Colors.blue
              // ),
              // // ignore: deprecated_member_use
              // title: Text(
              //   '我的',
              //   // style:TextStyle(color: Colors.blue)
              // ),
                icon: Image.asset(
                  'assets/images/mine_normal.png',
                  width: 24, height: 24
                ),
                // ignore: deprecated_member_use
                title: new Text('我的'),
                activeIcon: Image.asset(
                  'assets/images/mine_selected.png',
                  width: 24, height: 24
                )
            )
          ],
          // 初见Flutter
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (int index){
             setState((){
                _currentIndex = index;
                page = listItem[_currentIndex];
             });
          }
        )
  ); 
  }
}


