import 'package:flutter/material.dart';

class Camaraa extends StatefulWidget{
  Camaraa({super.key});
  @override
  State<Camaraa> createState() => _Camara();
}
class _Camara extends State<Camaraa>{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
    length: 3, 
    child: Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('home'),
        centerTitle: true,
        bottom: TabBar(tabs: [
          Tab(icon: Icon(Icons.message),),
          Tab(icon: Icon(Icons.camera_sharp),),
          Tab(icon: Icon(Icons.settings),),
        ]),
      ),
      body: Center(
        child: Text("Camera Screen"),
      ),




    ), 
    );
  }

}