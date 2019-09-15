import 'package:flutter/material.dart';
import './serach_input.dart';

void main()=> runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '不简单的搜索条',
      theme: ThemeData.light(),
      home: SerachK(),
    );
  }
}