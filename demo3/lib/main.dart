import 'package:flutter/material.dart';
import './First.dart';
void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '路由转台',
      theme: ThemeData(
        // primarySwatch: Colors.blue
      ),
      home: First(),
    );
  }
}