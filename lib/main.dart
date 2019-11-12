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
      body: Padding(
        padding: EdgeInsets.all(60.0),
        child: Text("Hello Padding"),
      ),
//      Container(
//        child: Text("Hello Flutter"),
//        color: Colors.grey[400],
//        margin: EdgeInsets.all(50.0),
//        padding: EdgeInsets.symmetric(vertical:30.0,horizontal: 30.0),
////        padding: EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
////        padding: EdgeInsets.all(90.0),
//      ),
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
