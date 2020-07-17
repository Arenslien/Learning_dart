import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Basic 03',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        title: Text('CHARMANDER'),
        centerTitle: true,
        backgroundColor: Colors.amber[700],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 30.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/turn.gif'),
                radius: 60.0,
              ),
            ),
            Divider(
              height: 60.0,
              thickness: 2.0,
              endIndent: 30.0,
              color: Colors.grey[700],
            ),
            Text('NAME',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 15.0
              ),
            ),
            SizedBox(
              height: 10.0
            ),
            Text('CHARMANDER',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 28.0
              ),
            ),
            SizedBox(
              height: 30.0
            ),
            Text('CHARMANDER POWER LEVEL',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 15.0
              ),
            ),
            SizedBox(
              height: 10.0
            ),
            Text('14',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 28.0
              ),
            ),
            SizedBox(
              height: 30.0
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.check_circle_outline
                ),
                SizedBox(
                  width: 20.0
                ),
                Text('Using lightsaber')
              ],
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.check_circle_outline
                ),
                SizedBox(
                  width: 20.0
                ),
                Text('face hero tattoo')
              ],
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.check_circle_outline
                ),
                SizedBox(
                  width: 20.0
                ),
                Text('fire flames')
              ],
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/charmander.jpg'),
                radius: 40.0,
                backgroundColor: Colors.amber[800],
              ),
            ),
          ],
        ),
      ),
    );
  }
}