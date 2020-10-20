import 'package:flutter/material.dart';
import 'package:tabsdrawer/tabs/tabspage.dart';

class SideMenu extends StatefulWidget {
  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Text(
              'Discover Sri Lanka',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0)),
                color: Colors.white,
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage('assets/sideimg.jpg'))),
          ),
          ListTile(
          
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => TabsPage(selectedIndex: 0)),
                )
            },
          ),
          ListTile(
            leading: Icon(Icons.search),
            title: Text('Search'),
            onTap: () => {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => TabsPage(selectedIndex: 1)),
                ),
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Profile'),
            onTap: () => {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => TabsPage(selectedIndex: 2)),
                ),
            },
          ),
          
        ],
      ),
    );
  }
}