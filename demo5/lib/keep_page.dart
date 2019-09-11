import 'package:flutter/material.dart';

class KeepPage extends StatefulWidget {
  @override
  _KeepPageState createState() => _KeepPageState();
}
// 混入继承保持页面状态的类
//混入AutomaticKeepAliveClientMixin，这是保持状态的关键
class _KeepPageState extends State<KeepPage> with AutomaticKeepAliveClientMixin {
  int addNume = 0;
  //然后重写wantKeppAlive 的值为true
  @override
   bool get wantKeepAlive => true;

  void initState() { 
    addNume = addNume;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //增加一个悬浮按钮，点击时触发_incrementCounter方法
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        tooltip: 'Increment',
        onPressed: (){
          setState(() {
            addNume++;
          });
        },
      ),
      body: Column( // 竖
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
           Text('$addNume',style: Theme.of(context).textTheme.display3),
           Text('点一下加一')
          // Center(
          //   child: Text('数量',style: TextStyle(fontSize: 30.0)),
          // ),
          //  Center(
          //   child: Text('$addNume',style: TextStyle(fontSize: 30.0))
          //   )
        ],
      ),
    ); 
  }
}