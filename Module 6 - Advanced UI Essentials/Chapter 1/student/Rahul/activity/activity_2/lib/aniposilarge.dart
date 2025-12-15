import 'package:flutter/material.dart';

class Aniposilarge extends StatefulWidget {
  const Aniposilarge({super.key});

  @override
  State<Aniposilarge> createState() => _AniposilargeState();
}

class _AniposilargeState extends State<Aniposilarge> {
  bool _ismoved = false;
  bool _islarge = false;
  void _toggle(){
    setState(() {
      _ismoved =!_ismoved;
    _islarge =!_islarge;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("AnimatedPositioned Eg:-"),
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: Duration(seconds: 1),
              curve: Curves.easeInOut,
              left: _ismoved ? 200 :50,
              top: _ismoved ? 200:50,
              child: GestureDetector(
                onTap: _toggle,
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: _islarge ?150:100,
                  height: _islarge?150:100,
                  color: Colors.redAccent,
                  child: Center(
                    child: Text("TAP ME",style: TextStyle(fontSize: 25,color: Colors.white),),
                  ),
                ),
              ), )
          ],
        ),
      ),
    );
  }
}