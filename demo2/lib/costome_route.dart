import 'package:flutter/material.dart';
class CustomsRoute extends PageRouteBuilder{
  final Widget widget;
  @override
  CustomsRoute(this.widget):super(
    transitionDuration: Duration(
      seconds: 1
    ),
    pageBuilder:(
      BuildContext context,
      Animation<double> animation1,
      Animation<double> animation2,

    ){  // 页面构造器
      return widget;
    }, 
    transitionsBuilder:(
      BuildContext context,
      Animation<double> animation1,
      Animation<double> animation2,
      Widget child,
    ){
      return FadeTransition(
           opacity: Tween(begin: 0.0,end: 1.0)
           .animate(CurvedAnimation(
             parent: animation1,
             curve: Curves.fastOutSlowIn
           )),
           child: child,
      );
    }
  );
}