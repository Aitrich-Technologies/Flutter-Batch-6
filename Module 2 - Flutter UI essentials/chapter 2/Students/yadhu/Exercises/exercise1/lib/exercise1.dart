import 'package:flutter/material.dart';

class Tabbar extends StatefulWidget{
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child:Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        toolbarHeight: 80,
        title: Text("Home",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
        centerTitle: true,
        bottom: TabBar(
          tabs: [
            Tab(icon: Icon(Icons.message)),
            Tab(icon: Icon(Icons.camera_rounded)),
            Tab(icon: Icon(Icons.settings)),
          ]
          ),
      ),
      body: TabBarView(
        children: [
          Container(
            color: Colors.green,
            child: Center(
              child: Text("Chat Screen"),
            ),
          ),
          Container(
            color: Colors.blue,
            child: Center(
              child: Text("Camera Screen"),
            ),
          ),
          Container(
            color: Colors.yellow,
            child: Center(
              child: Text("Settings Screen"),
            ),
          )
        ])
    )
    );
  }
}