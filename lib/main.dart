import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text("米斯特吴"),
      centerTitle: true,
      backgroundColor: Colors.red[600],
    ),
    body: Center(
      child: Text(
        "Hello Flutter",
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 2.0,
          color: Colors.grey[600],
          fontFamily: "IndieFlower"
        ),
      ),
    ),
    floatingActionButton: FloatingActionButton(
      backgroundColor: Colors.red[600],
      child: Text("按钮"),
    ),
  )
));

