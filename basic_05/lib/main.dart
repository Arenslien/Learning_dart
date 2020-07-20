import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'basic 04',
      home: MyHome(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Builder(
              builder: (BuildContext ctx) {
                return Center(
                  child: FlatButton(
                    child: Text(
                      'This is Flat Button',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.deepOrange,
                    onPressed: () {
                      Scaffold.of(ctx).showSnackBar(SnackBar(
                        content: Text('Hello'),
                        duration: Duration(
                          seconds: 1,
                        ),
                      ));
                    },
                  ),
                );
              },
            ),
            MySnackBar(),
            ToastButton(),
          ],
        ),
      ),
    );
  }
}

class MySnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
        'This is Raised Button',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      onPressed: () {
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text('This is User\'s SnackBar',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white
          )
          ),
          duration: Duration(
            seconds: 1,
          ),
          backgroundColor: Colors.teal[300],
        ));
      },
      color: Colors.yellow[600],
    );
  }
}

class ToastButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text('This is Toast Button',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      onPressed: () {
        flutterToast();
      },
      color: Colors.teal,
    );
  }
}

void flutterToast() {
  Fluttertoast.showToast(
    msg: 'This is Toast Message',
    fontSize: 20.0,
    backgroundColor: Colors.teal,
    textColor: Colors.white,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM, //Toast Message Location
  );
}