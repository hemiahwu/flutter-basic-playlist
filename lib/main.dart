import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text("米斯特吴"),
      centerTitle: true,
    ),
    body: Center(
      child: Text("Hello Flutter"),
    ),
    floatingActionButton: FloatingActionButton(
      child: Text("按钮"),
    ),
  )
));

