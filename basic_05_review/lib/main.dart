import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'basic 5 review',
      home: MyHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  // Color baseColor = Colors.indigo[600];
  // setColor(Color color) {
  //   this.baseColor = color;
  // }
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(
                  left: 120.0,
                ),
                width: 300.0,
                height: 150.0,
                color: Colors.indigo[600],
                child: Builder(
                  builder: (BuildContext ctx) {
                    return FlatButton(
                        child: Text(
                          'First SnackBar',
                          style: TextStyle(fontSize: 28.0),
                        ),
                        textColor: Colors.white,
                        onPressed: () {
                          Scaffold.of(ctx).showSnackBar(SnackBar(
                            content: Text('First SnackBar'),
                            backgroundColor: Colors.indigo[600],
                            duration: Duration(
                              milliseconds: 800,
                            ),
                          ));
                          Navigator.push(context, MaterialPageRoute(
                            builder: (BuildContext context) {
                              return SecondPage();
                            },
                          ));
                        });
                  },
                )),
            Container(
                margin: EdgeInsets.only(
                  left: 120.0,
                ),
                width: 300.0,
                height: 150.0,
                color: Colors.lightBlue[800],
                child: Builder(
                  builder: (BuildContext context) {
                    return FlatButton(
                        child: Text(
                          'Second SnackBar',
                          style: TextStyle(fontSize: 28.0),
                        ),
                        textColor: Colors.white,
                        onPressed: () {
                          Scaffold.of(context).showSnackBar(SnackBar(
                            content: Text('Second SnackBar'),
                            backgroundColor: Colors.lightBlue[800],
                            duration: Duration(
                              milliseconds: 800,
                            ),
                          ));
                        });
                  },
                )),
            Container(
              margin: EdgeInsets.only(
                left: 120.0,
              ),
              color: Colors.lightBlue,
              width: 300.0,
              height: 150.0,
              child: ThirdSnackBar(),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 120.0,
              ),
              color: Colors.lightBlue[200],
              width: 300.0,
              height: 150.0,
              child: FlatButton(
                child: Text(
                  'First Toast',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.0,
                  ),
                ),
                onPressed: () {
                  Fluttertoast.showToast(
                    msg: 'First Toast',
                    fontSize: 20.0,
                    textColor: Colors.white,
                    backgroundColor: Colors.lightBlue[200],
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                  );
                  // baseColor = Colors.lightBlue[200];
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 120.0,
              ),
              color: Colors.lightBlue[50],
              width: 300.0,
              height: 150.0,
              child: FlatButton(
                child: Text(
                  'Second Toast',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.0,
                  ),
                ),
                onPressed: () {
                  Fluttertoast.showToast(
                    msg: 'Second Toast',
                    fontSize: 20.0,
                    textColor: Colors.white,
                    backgroundColor: Colors.lightBlue[300],
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                  );
                  // baseColor = Colors.lightBlue[50];
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ThirdSnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(
        'Third SnackBar',
        style: TextStyle(fontSize: 28.0),
      ),
      textColor: Colors.white,
      onPressed: () {
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text(
            'Third SnackBar',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.lightBlue,
          duration: Duration(milliseconds: 1000),
        ));
      },
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            CustomBox(Colors.indigo, 'Go', 'Go to the first page'),
            CustomBox(Colors.lightBlue[800], 'To', 'Go to the first page'),
            CustomBox(Colors.lightBlue, 'The', 'Go to the first page'),
            CustomBox(Colors.lightBlue[300], 'First', 'Go to the first page'),
            CustomBox(Colors.lightBlue[50], 'Page', 'Go to the first page'),
          ],
        ),
      ),
    );
  }
}

class CustomBox extends StatelessWidget {
  Widget name;
  String buttonText;
  String content;
  Color color;
  CustomBox(Color color, String buttonText, String content) {
    this.color = color;
    this.buttonText = buttonText;
    this.content = content;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
      ),
      color: this.color,
      width: 300.0,
      height: 150.0,
      child: FlatButton(
        child: Text(
          buttonText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 28.0,
          ),
        ),
        onPressed: () {
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text(this.content),
            backgroundColor: this.color,
            duration: Duration(
              milliseconds: 800,
            ),
          ));
          Navigator.pop(context);
        },
      ),
    );
  }
}
