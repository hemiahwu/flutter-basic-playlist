import 'package:flutter/material.dart';
import 'datas.dart';
import 'datas_card.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
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
          children: datas.map((data) => DataCard(
            data:data,
            delete:(){
                setState(() {
                  datas.remove(data);
                });
              },
          )).toList()
      ),
    );
  }
}






