import 'package:flutter/material.dart';
import 'package:myapp/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldTime> locations = [
    WorldTime(url: 'Asia/Shanghai', location: "北京", flag: "china.png"),
    WorldTime(url: 'Europe/London', location: '伦敦', flag: 'uk.png'),
    WorldTime(url: 'Europe/Berlin', location: '雅典', flag: 'greece.png'),
    WorldTime(url: 'Africa/Cairo', location: '开罗', flag: 'egypt.png'),
    WorldTime(url: 'Africa/Nairobi', location: '内罗毕', flag: 'kenya.png'),
    WorldTime(url: 'America/Chicago', location: '芝加哥', flag: 'usa.png'),
    WorldTime(url: 'America/New_York', location: '纽约', flag: 'usa.png'),
    WorldTime(url: 'Asia/Seoul', location: '首尔', flag: 'south_korea.png'),
  ];



  @override
  Widget build(BuildContext context) {
//    print("build function ran");
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('选择一个国家'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0,horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: (){
                  print(locations[index].location);
                },
                title: Text(locations[index].location),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/${locations[index].flag}'),
                ),
              ),
            ),
          );
        },
      )
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
//    print("dispose function ran");
  }
}
