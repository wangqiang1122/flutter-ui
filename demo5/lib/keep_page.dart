import 'package:flutter/material.dart';

class KeepPage extends StatefulWidget {
  @override
  _KeepPageState createState() => _KeepPageState();
}
// 混入继承保持页面状态的类
class _KeepPageState extends State<KeepPage> with AutomaticKeepAliveClientMixin {
  int addNume = 0;
  @override
   bool get wantKeepAlive => true;

  void initState() { 
    addNume = addNume;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            addNume++;
          });
        },
      ),
      body: Column( // 竖
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text('数量',style: TextStyle(fontSize: 30.0)),
          ),
           Center(
            child: Text('$addNume',style: TextStyle(fontSize: 30.0))
            )
        ],
      ),
    ); 
  }
}