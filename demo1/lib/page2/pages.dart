import 'package:flutter/material.dart';

class PagesPage extends StatelessWidget {
  // 初⻅Flutter
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的'),
      ),
      body: Center(
        child: Text('我的',style: TextStyle( fontSize: 40.0 ),),
      ),
    );
  }
}