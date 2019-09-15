import 'package:flutter/material.dart';
import './ExpansionPanelListDemo.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '展开闭合列表',
      theme: ThemeData.light(),
      home: ExpansionPanelListDemo()
    );
  }
}