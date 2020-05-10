import 'package:flutter/material.dart';
import './modal/orderItem.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '数据模型',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '数据模型'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _cardListItem(),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
  // 新建map对象
  Map obj() {
      var object = new Map();
      object['imagesrc']='我是url';
      return object;
  } 
  // 自定义Widget
  Widget _cardListItem() {
    List<OrderItem> ItemList= [];
    List arrM = ['1','2','4','5','6','7'];
    arrM.forEach((item){
      print(item);
        Map<String, dynamic> objlist = {
           "imageSrc": item
        };
        ItemList.add(OrderItem.fromJson(objlist));
    });
    print("数据模型$ItemList");
    ItemList.forEach((item){
      print(item.imageSrc);
    });
    return Container(
      child: Text(
              'You 大大大 the button this',
            )
    );
  }
}
