import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic02',
      theme: ThemeData(
        primarySwatch:Colors.blue
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar of basic 2'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('First Text'),
            Text('Second Text', textAlign: TextAlign.center),
            Text('Third Text', textAlign: TextAlign.right),
          ],
        ),
      ),
    );
  }
}