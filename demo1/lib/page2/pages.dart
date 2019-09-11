import 'package:flutter/material.dart';

class PagesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我是Pages'),
      ),
      body: Center(
        child: Text('Pages',style: TextStyle( fontSize: 40.0 ),),
      ),
    );
  }
}