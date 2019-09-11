import 'package:flutter/material.dart';
import './keep_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '保持页面状态',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: KeepLive()
    );
  }
}

class KeepLive extends StatefulWidget {
  @override
  _KeepLiveState createState() => _KeepLiveState();
}
// 要实现多继承 混入
class _KeepLiveState extends State<KeepLive> with SingleTickerProviderStateMixin {
  TabController _controller;
  // 初始化
  @override
  void initState() { 
    super.initState();
    _controller = TabController(
    length: 3,  // tab的长度
    vsync:this // 固定写法
    );
     _controller.addListener((){
      var index = _controller.index;
      var previousIndex = _controller.previousIndex;
      print("index: $index");
      print('previousIndex: $previousIndex');
    });
  } 
  // 销毁方法
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('页面保持状态'),
        bottom: TabBar( // appbar里的bottom
            controller: _controller,
            labelColor: Colors.red,
            indicatorColor: Color(0xffff0000),
            indicatorWeight: 2.0,
            // isScrollable: true,
            labelStyle: TextStyle(
              fontSize: 20.0
            ),
            tabs: <Widget>[
                Tab(
                  icon:Icon(
                    Icons.add_a_photo,
                    )),
                Tab(text: '丽人',),
                Tab(text: '旅行',),
            ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
           KeepPage(),
           KeepPage(),
           KeepPage(),
        ],
      )
    );
  }
}

