import 'package:flutter/material.dart';

import 'first_page.dart';
import 'second_page.dart';
import 'third_page.dart';

class Bar extends StatefulWidget {
  @override
  BarState createState() => BarState();
}

class BarState extends State<Bar> {
  int tabIndex = 0;
  List<Widget> pages = [
    FirstPage(),
    SecondPage(),
    ThirdPage()
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: SafeArea(
            child: BottomNavigationBar(
              iconSize: 25,
              elevation: 4.0,
              items: <BottomNavigationBarItem>[
                barItem(Icons.message),
                barItem(Icons.camera_enhance),
                barItem(Icons.person),
              ],
              currentIndex: tabIndex,
              onTap: (int index) {
                setState(() {
                  tabIndex = index;
                });
              },
            ),
          )),
      body: Container(
        child: pages.elementAt(tabIndex),
      ),
    );
  }
}

barItem(IconData iconpic) => BottomNavigationBarItem(
    icon: Icon(iconpic, color: Colors.grey),
    activeIcon: Icon(
      iconpic,
      color: Colors.black,
    ),
    title: Text(''));
