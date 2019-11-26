import 'package:flutter/material.dart';
//import 'pages/home.dart';
import 'package:myapp/pages/home.dart';
import 'package:myapp/pages/choose_location.dart';
import 'package:myapp/pages/loading.dart';


void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    "/":(context) => Loading(),
    "/home": (context) => Home(),
    "/location": (context) => ChooseLocation()
  },
));








