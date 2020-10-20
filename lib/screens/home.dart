import 'package:flutter/material.dart';
import 'package:tabsdrawer/sidemenu/side_menu.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return RotatedBox(
              quarterTurns: 1,
              child: IconButton(
                icon: Icon(
                  Icons.bar_chart_rounded,
                  color: Colors.black,
                ),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            );
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          IconButton(
              color: Colors.black,
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.pushNamed(context, '/search');
              }),
        ],
      ),
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}