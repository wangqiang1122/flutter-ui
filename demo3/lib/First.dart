import 'package:flutter/material.dart';
import './seahen.dart';
import './costome_route.dart';
class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('FirstPage',style: TextStyle(fontSize: 40.0),),
        elevation: 0.0, 
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.arrow_right,
            color: Colors.white,
            size: 64.0
          ),
          onPressed: () {
            // Navigator.of(context).push(MaterialPageRoute(
            //   builder: (BuildContext context){
            //     return new Seaond();
            //   }
            // ));
            Navigator.of(context).push(CustomsRoute(Seaond()));
          },
        )
      ),
    );
  }
}