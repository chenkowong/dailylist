import 'package:flutter/material.dart';

class Dailylist extends StatefulWidget {
  //?Dailylist({Key key}) : super(key: key);不能出现
  // Dailylist({Key key}) : super(key: key);


  //!定义Dailylist的属性
  String title;
  String state;
  String date;
  String time;
  String location;
  String details;

  //!要求引用Dailylist方法时必须出现属性
  Dailylist(
    {@required this.title,
    this.state,
    this.date,
    this.time,
    this.location,
    this.details});

  @override
  _DailylistState createState() => _DailylistState();
}

class _DailylistState extends State<Dailylist> {
  String title;
  String state;
  String date;
  String time;
  String location;
  String details;

  @override
  void initState() {
    //?
    super.initState();

    title = widget.title;
    state = widget.state;
    date = widget.date;
    time = widget.time;
    location = widget.location;
    details = widget.details;
  }

  @override
  Widget build(BuildContext context,) {
    return _dailylistTemplate('hello');
  }

  Widget _dailylistTemplate(String title) {
    return Card(
      margin: EdgeInsets.only(bottom:14),
      child: new Row(
        children: <Widget>[
          Expanded(
            child: new Container(
              height: 100,
              decoration: new BoxDecoration(
                // 已结束颜色
                color:Colors.grey[300],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(3.0),
                  bottomLeft: Radius.circular(3.0)
                )
              ),
            ),
            flex: 1,
          ),
          Expanded(
            child: new Container(
              height: 100,
              padding: EdgeInsets.all(10),
              decoration: new BoxDecoration(
                color: Colors.grey[300]
              ),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      // 已结束颜色
                      // Text('马拉松(1000人)',style:TextStyle(fontSize:16,fontWeight:FontWeight.bold,color:Colors.black54)),
                      Text(title,style:TextStyle(fontSize:16,fontWeight:FontWeight.bold,color:Colors.black54)),
                      Text(state,style:TextStyle(fontSize:16,fontWeight:FontWeight.bold,color:Colors.grey))
                    ],
                  ),
                  Text(time,style:TextStyle(fontSize:12,color:Colors.grey)),
                  Text(location,style:TextStyle(fontSize:12,color:Colors.grey)),
                  SizedBox(height: 9),
                  Row(
                    children: <Widget>[
                      Text(details)
                      // Text('安保公司 - 4家 | 保安 - 80人',style:TextStyle(fontSize:12,color:Colors.black54,fontWeight: FontWeight.bold)),
                      // Text('(签到 50 人)',style:TextStyle(fontSize:12,color:Colors.black54,fontWeight: FontWeight.bold))
                    ],
                  )
                ],
              )
            ),
            flex: 48,
          ),
          Expanded(
            child: new Container(
              height: 100,
              decoration: new BoxDecoration(
                // 已结束颜色
                color: Colors.grey[300],
                border: Border(left: BorderSide(color: Colors.white70))
              ),
              child: new FlatButton(
                onPressed: () {
                  // _openActivityItem(context);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // 已结束颜色
                    new Icon(Icons.content_copy,color:Colors.white),
                    new Text('详情',style: TextStyle(fontSize:12,color:Colors.white))
                  ],
                  
                )
              )
            ),
            flex: 11
          )
        ],
      )
    );
  }
}