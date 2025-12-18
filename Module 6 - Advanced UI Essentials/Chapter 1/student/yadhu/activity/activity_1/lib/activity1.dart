// ignore_for_file: unused_element, sort_child_properties_last

import 'package:flutter/material.dart';

class Activity1 extends StatefulWidget {
  const Activity1({super.key});

  @override
  State<Activity1> createState() => _Activity1State();
}

class _Activity1State extends State<Activity1> {
  bool _isMoved = false;

  void _togglePosition()
  {
    setState(() {
      _isMoved = !_isMoved;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Animated Positioned Example"),
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          children: [
            AnimatedPositioned(
              child: GestureDetector(
                onTap: _togglePosition,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  child: Center(
                    child: Text("Tap Me",
                    style: TextStyle(color: Colors.white,fontSize: 18)),
                  ),
                ),
              ),
              duration: Duration(seconds: 1),
              curve: Curves.easeInOut,
              left: _isMoved ? 200 : 50,
              top: _isMoved ? 400 : 50)
          ],
        ),
      ),
    );
  }
}