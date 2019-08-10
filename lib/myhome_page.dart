import 'package:flutter/material.dart';
// import 'package:flutter_custom_calendar/flutter_custom_calendar.dart';
import './dailylist/dailylist.dart';


class MyHomePage extends StatefulWidget {
  // *调用父级构造函数
  MyHomePage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => MyHomePageState();
}

class MyHomePageState extends State<StatefulWidget> {
  // String currentDate;

  @override
  // ? 初始化currentDate的日期，在日历中选择时间后调用setState方法
  // void initState() {
  //   currentDate = "${DateTime.now().month}月${DateTime.now().day}日";
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('demo'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.calendar_today),
            tooltip: '选择日期',
            onPressed: () {
              // _updateTitleDate(context);
            }
          )
        ],
      ),
      body: new SingleChildScrollView(
        child: new Container(
          padding: EdgeInsets.all(20),
          height: 1000,
          color: Colors.grey[200],
          child: new Column(
            children: <Widget>[
              Dailylist(
                title: 'aaaaaa',
                state: 'close',
                date: 'ddd',
                time: '9:00am',
                location: 'wallstreet',
                details: 'helloworld'
              ),
              Column(
                children: <Widget>[
                  Text(' — 没有更多记录 — ', style:TextStyle(color:Colors.grey[400]))
                ],
              )
            ],
          )
        )
      )
    );
  }
  // 跳转日历页面选择日期并返回数据
  // _updateTitleDate(BuildContext context) async {
  //   // 定义数据返回结果
  //   var result = await Navigator.push(
  //     context,
  //     new MaterialPageRoute(builder: (context) => new CalendarScreen())
  //   );
  //   /**
  //    * result -> DateModel  2019\08\05
  //    * DateModel {
  //    *    year: 2019
  //    *    month: 8
  //    *    day: 5
  //    * }
  //    * 
  //    * Scaffold.of(context).showSnackBar(
  //    *    new SnackBar(content: new Text('$result'))
  //    * );
  //    */
  //   if (result == null) {
  //     Scaffold.of(context).showSnackBar(
  //       new SnackBar(content: new Text("无数据变更"))
  //     );
  //     return;
  //   }
  //   var newYear = result.year;
  //   var newMonth = result.month;
  //   var newDay = result.day;
  //   // ! 数据接口
  //   Scaffold.of(context).showSnackBar(
  //     new SnackBar(content: new Text("数据接口：$newYear-$newMonth-$newDay"))
  //   );
  //   // 修改title的日期
  //   Scaffold.of(context).setState((){
  //     currentDate = "$newMonth月$newDay日";
  //   });
  // }

  // 点击活动详情事件
  // _openActivityItem (BuildContext context) {
  //   Navigator.push(
  //     context,
  //     new MaterialPageRoute(builder: (context) => new ActivityDetail())
  //   );
  // }

}