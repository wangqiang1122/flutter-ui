import 'package:flutter/material.dart';


class ExpansionPanelListDemo extends StatefulWidget {
  @override
  _ExpansionPanelListDemoState createState() => _ExpansionPanelListDemoState();
}

class _ExpansionPanelListDemoState extends State<ExpansionPanelListDemo> {
List mList;
List<ExpansionPanelBean> expendStateList;
@override
void initState() {
  _ExpansionPanelListState(); 
  super.initState();
}

_ExpansionPanelListState() {
  mList = new List();
  expendStateList = new List();
  for (var a =0; a<10;a++) {
    mList.add(a);
    expendStateList.add(ExpansionPanelBean(false,a));
  }
}

   //修改展开与闭合的内部方法
  _setCurrentIndex(int index, isExpand){
    setState(() {
          //遍历可展开状态列表
          expendStateList.forEach((item){
            if(item.index==index){
              //取反，经典取反方法
              item.isOpen = !isExpand;
            }
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpansionPanelList闭合列表')
      ),
      body: SingleChildScrollView( // 可滚动的控件
        child: ExpansionPanelList(
          expansionCallback: (index,boll) {
             _setCurrentIndex(index, boll);
          },
          children: mList.map((index){
             return ExpansionPanel(
               canTapOnHeader: true,
                headerBuilder: (context,isExpanded){
                    return ListTile(
                      title:Text('This is No. $index')
                    );
                },
                body:ListTile(
                  title:Text('expansion no.$index'),
                  onTap: (){
                    setState(() {
                      print(index);
                    });
                  },
                 ),
                isExpanded: expendStateList[index].isOpen,
             );
          }).toList()
        ),
      ),
    );
  }
}


// 新建一个类 属性有是否是打开 和索引值

class ExpansionPanelBean{
  var isOpen;
  var index;
  ExpansionPanelBean(this.isOpen,this.index);
}
