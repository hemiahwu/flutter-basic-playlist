import 'package:flutter/material.dart';
import 'package:myapp/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = 'loading';

  void setupWorldTime() async {
    WorldTime instance = WorldTime(location: "北京",flag:"China.png",url: 'Asia/Shanghai');
    await instance.getData();

    Navigator.pushNamed(context, "/home", arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDaytime': instance.isDaytime
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body:Center(
        child: SpinKitHourGlass(
          color: Colors.white,
          size: 70.0,
        ),
      )
    );
  }
}
