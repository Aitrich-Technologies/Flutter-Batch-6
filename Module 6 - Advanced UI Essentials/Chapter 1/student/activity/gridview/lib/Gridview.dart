import 'package:flutter/material.dart';

class Gridview extends StatelessWidget{
  const Gridview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Grid view"),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Padding(padding: EdgeInsets.all(8),
      child: GridView.builder(
        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8),
          itemBuilder:(context,index){
            var xindex = index % 8;
            var yindex = (index/8).floor();
            return Container(
              color: (xindex + yindex).isEven ? Colors.black : Colors.red,
              child: Stack(
                children: [],
              ),
            );
          }),
      ),
    );
  }
}