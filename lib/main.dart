import 'package:flutter/material.dart';
import './announcement.dart';
import './announcement_board.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _currentPage = 1;
  var _pages = [
    Text("Page 1 - Home"),
    Text("Page 2 - Announcements"),
    Text("Page 3 - Account")
  ];
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Announcement"),
          ),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Card(
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              AnnouncementList()
            ]),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("Home")),
            BottomNavigationBarItem(
                icon: Icon(Icons.announcement), title: Text("Announcements")),
            BottomNavigationBarItem(
                icon: Icon(Icons.assignment_ind), title: Text("Account")),
          ],
          currentIndex: _currentPage,
          fixedColor: Colors.green,
          onTap: (int inIndex) {
            setState(() {
              _currentPage = inIndex;
            });
          },
        ),
      ),
    );
  }
}
