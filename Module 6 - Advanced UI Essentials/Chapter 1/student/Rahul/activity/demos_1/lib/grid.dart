import 'package:flutter/material.dart';

class Gridd extends StatefulWidget {
  const Gridd({super.key});

  @override
  State<Gridd> createState() => _GriddState();
}

class _GriddState extends State<Gridd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Grid',style: TextStyle(fontSize: 39,color: Colors.white),),
        centerTitle: true,
      ),
      body: Padding(padding: EdgeInsetsGeometry.all(8),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8),
          itemBuilder: (context,index){
            var xindex = index %8;
            var yindex =(index/8).floor();
            return Container(
              color: (xindex + yindex).isEven ? Colors.blue : Colors.white,
              child: Stack(
                children: [
                  Text('LM10'),
                ],
              ),
            );
          }
        ),
      ),
    );
  }
}