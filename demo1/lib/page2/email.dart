import 'package:flutter/material.dart';

class EmailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我是email'),
      ),
      body: Center(
        child: Text('emali',style: TextStyle( fontSize: 40.0 ),),
      ),
    );
  }
}