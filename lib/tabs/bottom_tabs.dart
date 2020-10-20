import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tabsdrawer/screens/home.dart';
import 'package:tabsdrawer/screens/profile.dart';
import 'package:tabsdrawer/screens/search.dart';

class TabNavigationItem {
  final Widget page;
  final Widget title;
  final Icon icon;

  TabNavigationItem({this.page, this.title, this.icon});

  static List<TabNavigationItem> get items => [
        TabNavigationItem(
          page: Home(),
          icon: Icon(Icons.home),
          title: Text("Home"),
        ),
        TabNavigationItem(
          page: Search(),
          icon: Icon(Icons.search),
          title: Text("Search"),
        ),
        TabNavigationItem(
          page: Profile(),
          icon: Icon(Icons.home),
          title: Text("Home"),
        ),
      ];
}
