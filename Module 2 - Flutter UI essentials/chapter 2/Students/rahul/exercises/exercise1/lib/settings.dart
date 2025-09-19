import 'package:flutter/material.dart';

class Settingss extends StatelessWidget{
  Settingss({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child:Scaffold(
        backgroundColor: Colors.lime,
        appBar: AppBar(
          title: Text('Home'),
          backgroundColor: Colors.grey,
          centerTitle: true,
          bottom: TabBar(tabs: [
            Tab(icon: Icon(Icons.message),),
            Tab(icon: Icon(Icons.camera_sharp),),
            Tab(icon: Icon(Icons.settings),)
          ]),

        ),
      body: Center(
        child: Text('Settings Screen'),
      ),
      ), );
  }
}