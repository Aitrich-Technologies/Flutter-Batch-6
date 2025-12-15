import 'package:flutter/material.dart';

class AnimatedPosition extends StatefulWidget {
  const AnimatedPosition({super.key});

  @override
  State<AnimatedPosition> createState() => _AnimatedPositionState();
}

class _AnimatedPositionState extends State<AnimatedPosition> {
  bool _ismoved = false;
  void _toggilePosition(){
    setState(() {
      _ismoved =!_ismoved;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('AnimatedPositioned eg:'),
      ),
      body: Center(
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: Duration(seconds: 1),
              curve: Curves.easeInOut,
              left: _ismoved ? 200 :50,
              top: _ismoved ? 400 :50,
              child: GestureDetector(
                onTap: _toggilePosition,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                  child: Center(
                    child: Text('TAP ME',style: TextStyle(fontSize: 20,color: Colors.white),),
                  )
                ),
              ), 
            ),
          ],
        ),
      ),
    );
  }
}