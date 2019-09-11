import 'package:flutter/material.dart';
import './bottomBarb.dart';

void main ()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '不规则bottomBar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        primaryColor: Colors.black
      ),
      // theme: ThemeData(
      //   primarySwatch: Colors.red
      // ),
      home: BottomBar(),
    );
  }
}