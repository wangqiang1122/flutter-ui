import 'package:flutter/material.dart';
import './First.dart';
class Seaond extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title:  Text('seaonfPage', style:TextStyle(fontSize: 40.0)),
        elevation: 0.0,
        centerTitle: false,
        leading: Container(),
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.arrow_left ,
            color:Colors.white,
            size: 60
          ),
          onPressed: (){
            // Navigator.of(context).push(MaterialPageRoute(
            //   builder: (BuildContext context){
            //     return new First();
            //   }
            // ));
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}