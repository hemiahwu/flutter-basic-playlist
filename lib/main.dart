import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class Datas{
  String text;
  String author;

  Datas({this.text,this.author});

}

class _HomeState extends State<Home> {





  List<Datas> datas = [
    Datas(text:"hello world",author:"米斯特吴"),
    Datas(text:"hello flutter",author:"阿里巴巴"),
    Datas(text:"hello missyou",author:"米修在线"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("米修在线"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),

      body: Column(
//        children: datas.map((data){
//          return Text(data);
//        }).toList()

          children: datas.map((data) => Text('${data.author} : ${data.text}')).toList()
//        children: <Widget>[
//          Text("hello world"),
//          Text("hello flutter"),
//          Text("hello misterwu"),
//        ],
      ),
    );
  }
}




