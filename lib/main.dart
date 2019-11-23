import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("米修在线"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      body: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/me.jpg'),
                  radius: 40.0,
                ),
              ),

              Divider(
                height: 60.0,
                color: Colors.grey[800],
              ),
              
              Text("姓名",style: TextStyle(
                color:Colors.grey,
                letterSpacing: 2.0
              )),
              SizedBox(height: 10.0),
              Text("米斯特吴",style: TextStyle(
                color: Colors.amberAccent[200],
                fontWeight: FontWeight.bold,
                fontSize: 28.0
              )),
              SizedBox(height: 30.0),
              Text("公司",style: TextStyle(
                  color:Colors.grey,
                  letterSpacing: 2.0
              )),
              SizedBox(height: 10.0),
              Text("阿里巴巴,新零售",style: TextStyle(
                  color: Colors.amberAccent[200],
                  fontWeight: FontWeight.bold,
                  fontSize: 28.0
              )),
              SizedBox(height: 30.0),
              Text("岗位",style: TextStyle(
                  color:Colors.grey,
                  letterSpacing: 2.0
              )),
              SizedBox(height: 10.0),
              Text("Node.js开发",style: TextStyle(
                  color: Colors.amberAccent[200],
                  fontWeight: FontWeight.bold,
                  fontSize: 28.0
              )),
              SizedBox(height: 30.0),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color:Colors.grey[400]
                  ),
                  SizedBox(width: 10.0),
                  Text('wuhaiyang@alibaba-inc.com',style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0
                  ))
                ],
              ),
            ],
          ),
      ),
    );
  }
}

