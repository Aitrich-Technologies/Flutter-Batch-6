import 'package:flutter/material.dart';

class Presuffix extends StatefulWidget {
  const Presuffix({super.key});

  @override
  State<Presuffix> createState() => _PresuffixState();
}

class _PresuffixState extends State<Presuffix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text('PREFIX SUFFIX ICON'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(padding: EdgeInsetsGeometry.all(50),
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.mail),
            suffixIcon: Icon(Icons.remove_red_eye),
            hintText: 'ENTER TEXT',
            border: OutlineInputBorder()
            ),
          ),
        ),
      ),
    );
  }
}