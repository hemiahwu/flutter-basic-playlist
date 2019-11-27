import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData() async {

    // http request
    Response response = await get("http://worldtimeapi.org/api/timezone/Asia/Shanghai");
    Map data = jsonDecode(response.body);
    // print(data);
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1,3);

    // 创建时间对象
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
    print(now);

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("loading screen"),
    );
  }
}
