import 'package:flutter/material.dart';

class WarpDemo extends StatefulWidget {
  @override
  _WarpDemoState createState() => _WarpDemoState();
}

class _WarpDemoState extends State<WarpDemo> {  

 List<Widget> list=[];
 @override
  void initState() {
  //  list = List<Widget>()..add(buildButtonAdd());
    list.add(buildButtonAdd());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
      // 容器媒体查询
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;  
    // 流式布局
    return Scaffold(
      appBar: AppBar(
        title: Text('流式布局'),
      ),
      body: Center(
        child: Opacity(
          opacity: 0.8,
          child: Container(
             height: height/2,
             width: width,
             color: Colors.grey,
             child: Wrap(
               children: list,
               spacing: 10.0,   // 间距
             ),
          ),
        ),
      ),
    );
  }
  Widget buildButtonAdd() {
    
    return GestureDetector(   // 手势识别
        onTap: (){
           if (list.length<9) {
             setState(() {
               list.insert(list.length-1, buildphoto());
             });
           }
        },
        child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: 80.0,
          height: 80.0,
          color: Colors.black54,
          child:  Icon(Icons.add,color: Colors.grey,
         )),
        ),
    );
  }
  Widget buildphoto() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 80.0,
        height: 80.0,
        color: Colors.yellow,
        child: Center(
          child: Text('照片'),
        ),
      ),
    );
  }
}