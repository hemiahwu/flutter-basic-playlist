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
        //child: Image.asset("assets/image1.jpg"),
        child: Image.network("https://images.pexels.com/photos/2658457/pexels-photo-2658457.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
        //child: Image(
          //image:NetworkImage("https://images.pexels.com/photos/3178881/pexels-photo-3178881.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")
          //image: AssetImage("assets/image3.jpg"),
        //)
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
