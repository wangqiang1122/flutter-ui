import 'package:flutter/material.dart';
import './page2/pages.dart' show PagesPage;
import './page2/email.dart' show EmailPage;
import './page2/airplay.dart' show AirplayPage;
import './page2/home.dart' show HomePage ;


class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}
 var _currentIndex = 0;
 var page;
 List listItem = [
   HomePage(),
   EmailPage(),
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
      // appBar: AppBar(
      //   title: Text('booo'),
      // ),
      body: page,
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.red,
          selectedItemColor: Colors.white,
          backgroundColor: Theme.of(context).primaryColorDark,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                // color: Colors.blue
              ),
              title: Text(
                'home',
                // style:TextStyle(color: Colors.blue)
              ),
            ),
               BottomNavigationBarItem(
              icon: Icon(
                Icons.email,
                // color: Colors.blue
              ),
              title: Text(
                'email',
                // style:TextStyle(color: Colors.blue)
              ),
            ),
               BottomNavigationBarItem(
              icon: Icon(
                Icons.pages,
                // color: Colors.blue
              ),
              title: Text(
                'pages',
                // style:TextStyle(color: Colors.blue)
              ),
            ),
               BottomNavigationBarItem(
              icon: Icon(
                Icons.airplay,
                // color: Colors.blue
              ),
              title: Text(
                'airplay',
                // style:TextStyle(color: Colors.blue)
              ),
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (int index){
             setState((){
                _currentIndex = index;
                page = listItem[_currentIndex];
             });
          },
        ),
  );  
  }
}


