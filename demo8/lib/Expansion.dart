import 'package:flutter/material.dart';

class ExpansionDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expansion'),
      ),
      body: Center(
        child: ExpansionTile(
          title: Text('Expansion'),
          leading: Icon(Icons.ac_unit),
          backgroundColor: Colors.white12,
          initiallyExpanded: true,
          children: <Widget>[
            ListTile(
              title: Text('list title'),
              subtitle: Text('哈哈哈'),
            )
          ],
        ),
      ),
    );
  }
}