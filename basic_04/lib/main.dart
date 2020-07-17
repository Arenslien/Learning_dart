import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MyPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text('Appbar of squirtle'),
        centerTitle: true,
        elevation: 0.0,
        // leading: IconButton(
        //   icon: Icon(Icons.menu),
        //   onPressed: () {
        //     print('menu button is clicked');
        //   },
        // ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print('Shopping Button is clicked');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('Search button is clicked');
            }
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/squirtle.jpg'),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/squirtle.jpg'),
                ),
              ],
              accountName: Text('꼬부기'),
              accountEmail: Text('squirtle@gmail.com'),
              onDetailsPressed: () {
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                color: Colors.blue[200],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.grey[600]),
              title: Text('Home'),
              onTap: () {
                print('Home is clicked');
              },
            ),
            ListTile(
              leading: Icon(Icons.info, color: Colors.grey[600]),
              title: Text('Information'),
              onTap: () {
                print('Home is clicked');
              },
            ),
            ListTile(
              leading: Icon(Icons.bookmark_border, color: Colors.grey[600]),
              title: Text('Pokemon Index'),
              onTap: () {
                print('Home is clicked');
              },
              trailing: IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  print('Add is clicked');
                },
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        
        padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 75.0,
                backgroundImage: AssetImage('assets/squirtle_gif.gif'),
              ),
            ),
            Divider(
              height: 60.0,
               thickness: 2.0,
               color: Colors.indigo[300]
            ),
            Text(
             'NAME',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 20.0
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
             '꼬부기',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 30.0
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Text(
             'LEVEL',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 20.0
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
             '17',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 30.0
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  'Water Gun',
                  style: TextStyle(
                    fontSize: 20.0,
                    wordSpacing: 3.0
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  'Bite',
                  style: TextStyle(
                    fontSize: 20.0,
                    wordSpacing: 3.0
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  'Hydro Pump',
                  style: TextStyle(
                    fontSize: 20.0,
                    wordSpacing: 3.0
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}