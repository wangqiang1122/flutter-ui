import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我是home'),
      ),
      body: Center(
        child: Text('home',style: TextStyle( fontSize: 40.0 ),),
      ),
    );
  }
}