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
      body: Center(
            child: IconButton(
                icon: Icon(Icons.add_call),
                onPressed: () {
                  print("call me");
                },
              color: Colors.red,
            ),
//          child: RaisedButton.icon(
//            onPressed: () {},
//            icon:Icon(
//              Icons.mail
//            ),
//            label: Text("mail me"),
//            color: Colors.red,
//          ),
//        child: RaisedButton(
//          onPressed: () {
//            print("321茄子");
//          },
//          child: Text("拍照"),
//          color: Colors.red,
//        ),
//        child: Icon(
//          Icons.add_a_photo,
//          color: Colors.red,
//          size: 100.0,
//        ),
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
