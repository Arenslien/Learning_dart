import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'basic 06',
      home: MyHome(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.teal,
      ),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic 6'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ColorBox(Colors.red),
            RaisedButton(
              child: Text('Go to the Second page'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) {
                    return SecondPage();
                  }
                ));
              },
              color: Colors.yellow
            ),
            ColorBox(Colors.green),
            ColorBox(Colors.blue)
          ],
        ),
      ),
    );
  }
}



class ColorBox extends StatelessWidget {
  Color boxColor;

  ColorBox(Color color) {
    boxColor = color;
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        color: boxColor,
        border: Border.all(),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic 6'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ColorBox(Colors.red),
            ColorBox(Colors.green),
            RaisedButton(
              child: Text('Go to the First page'),
              onPressed: () {
                Navigator.pop(context);
              },
              color: Colors.teal,
            ),
            ColorBox(Colors.blue)
          ],
        ),
      ),
    );
  }
}