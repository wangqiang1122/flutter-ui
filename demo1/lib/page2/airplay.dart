import 'package:flutter/material.dart';

class AirplayPage extends StatelessWidget {
  // 初⻅Flutter
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('好友'),
      ),
      body: Center(
        child: Text('好友',style: TextStyle( fontSize: 40.0 )),
      ),
    );
  }
}