import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;

class pageHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('贝塞尔曲线'),
      ),
      body: Column( // 竖着
        children: <Widget>[
          ClipPath( // clip裁切 就是画图
            clipper: BottomClipperTest(),
            child: Container(
              color: Colors.deepOrange,
              height: 200.0,
            ),
          )
        ],
      ),
    );
}
}
// 继承于CustomClipper
class BottomClipper extends CustomClipper<Path>{
   @override
   Path getClip(Size size) {
     var path = Path();
     path.lineTo(0,0);
     path.lineTo(0,size.height-60);
     var firstD = Offset(size.width/2,size.height);
     var firstEnd = Offset(size.width,size.height-60);
     path.quadraticBezierTo(
       firstD.dx,
       firstD.dy,
       firstEnd.dx,
       firstEnd.dy);
     path.lineTo(size.width,size.height-60);
     path.lineTo(size.width,0); 
     return path;
   }
   @override
    bool shouldReclip(CustomClipper<Path> oldClippper) {
      return false;
    }
}

class BottomClipperTest extends CustomClipper<Path>{
   @override
   Path getClip(Size size) {
     var path = Path();
     path.lineTo(0,0);
     path.lineTo(0,size.height-60);
     var firstD = Offset(size.width/2, size.height-60);
     var firstK = Offset(size.width/4, size.height);
     var twoK = Offset(size.width*3/4, size.height-120);
     var twoD = Offset(size.width, size.height-60);
     path.quadraticBezierTo(firstK.dx, 
     firstK.dy, 
     firstD.dx, 
     firstD.dy);
     path.quadraticBezierTo(twoK.dx, 
     twoK.dy, 
     twoD.dx, 
     twoD.dy);
     path.lineTo(size.width, size.height-60);
     path.lineTo(size.width, 0);
     return path;
     
   }
   @override
    bool shouldReclip(CustomClipper<Path> oldClippper) {
      return false;
    }
}
