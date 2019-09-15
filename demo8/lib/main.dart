import 'package:flutter/material.dart';
import './Expansion.dart';

void main ()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '展开闭合案例Expansion',
      theme: ThemeData.dark(),
      home: ExpansionDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}