import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'basic 4 review',
      home: MyHome(),
      theme: ThemeData(
        primaryColor: Colors.deepPurple
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('REVIEW ABOUT WIDGET'),
        centerTitle: true,
        // leading: Icon(Icons.menu),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('Search Button is clicked');
            }
          ),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/conpang.png'),
                backgroundColor: Colors.deepPurple[50],
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/squirtle.jpg'),
                ),
              ],
              accountName: Text('Conpang'),
              accountEmail: Text('Conpang@pokemon.com'),
              onDetailsPressed: () {
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                color: Colors.deepPurple[300],
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text('Information'),
              onTap: () {
                print('Information tile is tapped');
              },
            ),
            ListTile(
              leading: Icon(Icons.turned_in_not),
              title: Text('Save'),
              onTap: () {
                print('Save tile is tapped');
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                print('Home tile is tapped');
              },
            ),
          ],
        ),
      ),

    );
  }
}