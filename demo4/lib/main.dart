import 'package:flutter/material.dart';
import './frosted_class.dart';


void main ()=> runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '毛玻璃效果',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: Scaffold(
        body: FrostedClassDemo(),
      )
    );
  }
}