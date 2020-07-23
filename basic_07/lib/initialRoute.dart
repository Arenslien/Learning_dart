import 'package:flutter/material.dart';

class InitialRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 500.0,
                height: 200.0,
                child: FlatButton(
                  child: Text(
                    'Go to ScreenA',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.red,
                  onPressed: () {
                    Navigator.pushNamed(context, '/a');
                  },
                ),
              ),

              Container(
                width: 500.0,
                height: 200.0,
                child: FlatButton(
                  child: Text(
                    'Go to ScreenB',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.green,
                  onPressed: () {
                    Navigator.pushNamed(context, '/b');
                  },
                ),
              ),

              Container(
                width: 500.0,
                height: 200.0,
                child: FlatButton(
                  child: Text(
                    'Go to ScreenC',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.pushNamed(context, '/c');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
