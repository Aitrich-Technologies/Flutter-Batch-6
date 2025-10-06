import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange[200],
          title: const Text('Home',
          style: TextStyle(fontSize: 30),),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home),text: 'Home'),
              Tab(icon: Icon(Icons.search),text: 'Search',),// Single tab with Home icon
              Tab(icon: Icon(Icons.person),text: 'Profile',)
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text(
                'Home Tab',
                style: TextStyle(fontSize: 25), // Centered text for the tab
              ),
            ),
            Center(
              child: Text(
                'Search Tab',
                style: TextStyle(fontSize: 25),
              ),
            ),
            Center(
              child: Text(
                'Profile Tab',
                style: TextStyle(fontSize: 25),
              ),
            )
          ],
        ),
      ),
    );
  }
}
