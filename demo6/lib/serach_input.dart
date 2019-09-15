import 'package:flutter/material.dart';
import './asset.dart';


class  SerachK extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('不简单的搜索条'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              // print('我惦记了');
              showSearch(context: context,delegate: SearchBarDelegate());
            },
          )
        ],
      ),
    );
  }
}

class SearchBarDelegate extends SearchDelegate <String> {
  // 需要重写右边按键
  @override
  List<Widget> buildActions(BuildContext context) {
    // 点击叉把搜索内容制成空的
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: ()=>query = '', 
      )
    ];
  }
// 重新左侧按键
@override
Widget buildLeading(BuildContext context) {
  return IconButton(
    icon: AnimatedIcon(   // 设置带动画的iocn
      icon: AnimatedIcons.menu_arrow,progress: transitionAnimation,
    ),
    onPressed: () => close(context,null), // 关闭当前上下文
  );
}
// 设置返回之后显示的值
@override
Widget buildResults(BuildContext context) {
  return Container(
    width: 100.0,
    height: 300.0,
    child: Card(
         child: Container(
           color: Colors.redAccent,
           child: Center(
             child: Text(query),
           ),
         ),
    ),
  );
}
// 提示方法
@override
Widget buildSuggestions(BuildContext context) {
  final suggsetionList = query.isEmpty? 
  recentSuggest: searchList.where((input)=>input.startsWith(query)).toList();
  return ListView.builder(
    itemCount: suggsetionList.length,
    itemBuilder: (BuildContext context, int index) {
    return ListTile(
      title: RichText(
        text: TextSpan(
          text: suggsetionList[index].substring(0,query.length),
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
          children: [
            TextSpan(
              text: suggsetionList[index].substring(query.length),
              style: TextStyle(
              color: Colors.grey,
          )   ,
            )
          ]
        ),
      ),
    );
   },
  );
}
}