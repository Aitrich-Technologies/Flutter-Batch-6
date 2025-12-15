// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Listview extends StatelessWidget{
  const Listview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("ListView",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          SizedBox(height: 15),
          ListTile(
            leading: Icon(Icons.map),
            title: Text("map"),
            onTap: () {},
          ),
          SizedBox(height: 15),
          ListTile(
            leading: Icon(Icons.photo),
            title: Text("Album"),
            onTap: () {},
          ),
          SizedBox(height: 15),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text("Phone"),
            onTap: () {
              
            },
          )
        ],
      ),
    );
  }
}