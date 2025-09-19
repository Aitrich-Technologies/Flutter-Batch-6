import 'package:flutter/material.dart';
class Exercisess extends StatelessWidget{
  Exercisess({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 1, child: 
    Scaffold(
      backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: Text('new'),
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
          bottom: TabBar(tabs: 
            [
             Tab(icon: Icon(Icons.message),),
             Tab(icon: Icon(Icons.camera_sharp),),
             Tab(icon: Icon(Icons.settings),),
           ]
          ),
        ),
        body: Center(
          child: Text('Chat Screen'),
        ),
      ),
    );
  }
}