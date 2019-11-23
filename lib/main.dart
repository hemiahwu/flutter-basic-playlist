import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("米斯特吴"),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text("Hello "),
              Text(" World")
            ],
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.blue,
            child: Text('one'),
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.red,
            child: Text('two'),
          ),
          Container(
            padding: EdgeInsets.all(40.0),
            color: Colors.green,
            child: Text('three'),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red[600],
        child: Text("按钮3"),
      ),
    );
  }
}

// widget: 设计不可变
// 无状态widget: image
// 有状态widget: checkbox
