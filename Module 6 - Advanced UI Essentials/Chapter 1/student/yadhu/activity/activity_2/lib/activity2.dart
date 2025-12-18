// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class Activity2 extends StatefulWidget {
  const Activity2({super.key});

  @override
  State<Activity2> createState() => _Activity2State();
}

class _Activity2State extends State<Activity2> {
  bool _isMoved = false;
  bool _isLarge = false;

  void _togglePosition()
  {
    setState(() {
      _isMoved = !_isMoved;
      _isLarge = !_isLarge;
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
                child: AnimatedContainer(duration: 
                Duration(seconds: 1),
                width: _isLarge ? 150 : 100,
                height: _isLarge ? 150 : 100,
                color: Colors.blue,
                child: Center(
                  child: Text("Tap Me",
                  style: TextStyle(color: Colors.white,fontSize: 18)),
                )),
              ),
              duration: Duration(seconds: 1),
              curve: Curves.easeInOut,
              left: _isMoved ? 300 : 150,
              top:  _isMoved ? 500 : 100,)
          ],
        ),
      ),
    );
  }
}