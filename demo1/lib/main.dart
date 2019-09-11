import 'package:flutter/material.dart';
import './bottomBar.dart';
void main() {
  runApp(new App());
}
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'aaaa',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text('底部导航栏')
      //   ),
      //   bottomNavigationBar:BottomBar()
      // ),
      home: BottomBar()
    );
  }

  void setState(Null Function() param0) {}
}
