import 'package:flutter/material.dart';
import 'package:basic_07/initialRoute.dart';
import 'package:basic_07/screenA.dart';
import 'package:basic_07/screenB.dart';
import 'package:basic_07/screenC.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => InitialRoute(),
        '/a' : (context) => ScreenA(),
        '/b' : (context) => ScreenB(),
        '/c' : (context) => ScreenC(),
      },
      title: 'basic 07',
      debugShowCheckedModeBanner: false,
    );
  }
}