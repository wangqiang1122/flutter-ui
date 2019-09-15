import 'package:flutter/material.dart';
import './warpdemo.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'wrap流是布局',
      theme: ThemeData.light(),
      home: WarpDemo()
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text('ddddd'),
      //   ),
      //   body: Container(
      //     width: 200,
      //     color: Colors.red,
      //     height: 200,
      //     child: Center(
      //       child: Text('wwwwww'),
      //     ),
      //   ),
      // ),
    );
  }
}