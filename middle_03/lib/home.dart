import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign up Boxes'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[200],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ButtonTheme(
              buttonColor: Colors.white,
              height: 50.0,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset('image/glogo.png'),
                    Text(
                      'Login with Google',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    Opacity(
                      opacity: 0.0,
                      child: Image.asset('image/glogo.png'),
                    ),
                  ],
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(height: 10.0),
            ButtonTheme(
              buttonColor: Colors.indigo[700],
              height: 50.0,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset('image/flogo.png'),
                    Text(
                      'Login with Facebook',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    Opacity(
                      opacity: 0.0,
                      child: Image.asset('image/flogo.png'),
                    ),
                  ],
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(height: 10.0),
            ButtonTheme(
              buttonColor: Colors.green,
              height: 50.0,
              child: RaisedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      size: 35.0,
                    ),
                    Text(
                      'Login with Email',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    Opacity(
                      opacity: 0.0,
                      child: Icon(
                        Icons.email,
                        size: 35.0,
                      ),
                    ),
                  ],
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
