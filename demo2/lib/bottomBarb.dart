import 'package:flutter/material.dart';
import './each_view_page.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int index = 0;
  List<Widget> eachviewpage = [];
  var page;
  @override
  void initState() {
    eachviewpage
    ..add(EachView('home'))
    ..add(EachView('air'))
    ..add(EachView('加号'));
    page = eachviewpage[0];
    super.initState();
  } 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('bottomBar'),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(
             builder:(BuildContext context) =>EachView('New Page')
           
          ));
          // setState(() {
          //   page = eachviewpage[2];
          // });
        },
        tooltip: 'jsW',
        child: Icon(
          Icons.add,
          color: Colors.white,
          ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max, //在主轴方向占有空间的值
          mainAxisAlignment: MainAxisAlignment.spaceAround, //主轴方向上的对齐方式
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.white,
              onPressed: (){
                setState(() {
                   page = eachviewpage[0];
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.airplay),
              color: Colors.white,
              onPressed: (){
                setState(() {
                  page = eachviewpage[1];
                });
              },
            )
          ],
        ),
      ),
      body: page,
    );
  }
}