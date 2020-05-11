import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class cardPage extends StatefulWidget {
  @override
  _cardPageState createState() => _cardPageState();
}

class _cardPageState extends State<cardPage> {
  // 
  List itemList = [];
  List testList;
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
  // 增加方法
  void _add() async{
    SharedPreferences prefs  = await SharedPreferences.getInstance();
    Map temp = { "name":'dddd'};
    itemList.add(temp);
    prefs.setStringList('testInfo', itemList); 
  }
  // 查询
  void _show() async{
      SharedPreferences prefs  = await SharedPreferences.getInstance();
      if (prefs.getStringList('testInfo')!=null) {
        setState(() {
          testList = prefs.getStringList('testInfo');
        });
      } 
  }
}