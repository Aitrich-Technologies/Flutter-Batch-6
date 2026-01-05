import 'package:flutter/material.dart';

class Activity5 extends StatefulWidget {
  const Activity5({super.key});

  @override
  State<Activity5> createState() => _Activity5State();
}

class _Activity5State extends State<Activity5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("prefix and Suffix Icon"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.mail),
              labelText: "Enter text",
              suffixIcon: Icon(Icons.visibility),
              border: OutlineInputBorder(),
            ),
          ),),
      ),
    );
  }
}