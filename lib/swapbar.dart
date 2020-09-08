import 'package:flutter/material.dart';

class SwapBar extends StatefulWidget {
  @override
  SwapBarState createState() => SwapBarState();
}

class SwapBarState extends State<SwapBar> {
  final List<Tab> tabs = <Tab>[Tab(text: 'page1'), Tab(text: 'page2')];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
      child: DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 4,
            title: Text(
              'ok',
              style:
                  TextStyle(color: Colors.black, fontStyle: FontStyle.italic),
            ),
          ),
          bottomNavigationBar: TabBar(
            indicatorColor: Colors.black,
            tabs: tabs,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            //indicator: BoxDecoration(color: Colors.black),
          ),
          body: TabBarView(
            children: [
              Container(
                color: Colors.greenAccent,
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.indigoAccent,
                width: 100,
                height: 100,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
