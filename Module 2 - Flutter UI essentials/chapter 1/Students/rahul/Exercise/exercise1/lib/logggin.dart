import 'package:flutter/material.dart';

class Myapp extends StatelessWidget{
  Myapp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RAHUL'),
        backgroundColor: Colors.blue,
        centerTitle: true,
        leading: Icon(Icons.settings),
        actions: [
          Icon(Icons.search)
        ],
      ),
      body: Container(
        width: 90,
        height: 90,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.cyan,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(15)
        ),
        child: Center(child: Text('hii'),),
      ),
     
    );
  }
}