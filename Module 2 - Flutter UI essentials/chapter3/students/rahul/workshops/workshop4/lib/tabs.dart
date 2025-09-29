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
          title: const Text('HOME',style: TextStyle(color: Colors.white),),
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent,
          bottom: const TabBar(
            tabs: [
              
              Tab(icon: Icon(Icons.home),
              child: Text('Home')), // Single tab with Home icon
              Tab(icon: Icon(Icons.search),
              child: Text('Search')),
              Tab(icon: Icon(Icons.person),
              child: Text('Profile')),
            ],
          ),
        ),
        body: TabBarView(children: [
          Center(

            child: Text('Home Tab',style: TextStyle(
              fontSize: 50
            ),),
          ),
          Center(

            child: Text('Search Tab',style: TextStyle(
              fontSize: 50
            ),),
          ),
          Center(

            child: Text('Profile Tab',style: TextStyle(
              fontSize: 50
            ),),
          )
        ])
            
      ),
    );
  }
}
