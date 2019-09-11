import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';
import 'dart:ui';  // 主要是用图片过滤器

class FrostedClassDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('毛玻璃效果'),
      ),
      body: Stack( //层叠控件
        children: <Widget>[
          ConstrainedBox(  // 约束盒子组件，添加呃呃爱的约束条件child上
            constraints: const BoxConstraints.expand(),
            child: Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1545738629147&di=22e12a65bbc6c4123ae5596e24dbc5d3&imgtype=0&src=http%3A%2F%2Fpic30.photophoto.cn%2F20140309%2F0034034413812339_b.jpg'),
          ),
          Center(
            child: ClipRect( // 可剪裁的矩形
               child: BackdropFilter( // 背景过滤器
                  filter: prefix0.ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
                  child: Opacity(
                    opacity: 0.5,
                    child: Container(
                      width: 500.0,
                      height: 700.0,
                      decoration: BoxDecoration(  //盒子修饰器
                        color: Colors.grey.shade100
                      ),
                      child: Center(
                        child: Text('shshshh',style: Theme.of(context).textTheme.display3),
                      )
                    ),
                  ),
               ),     
            ),
          )
        ],  
      ),
    );
  }
}