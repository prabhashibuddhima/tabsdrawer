import 'package:flutter/material.dart';
import 'package:tabsdrawer/tabs/tabspage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.white
      ),
      home: TabsPage(selectedIndex: 0),
      debugShowCheckedModeBanner: false,
    
    );
  }
}

