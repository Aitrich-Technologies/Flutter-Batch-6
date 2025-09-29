import 'package:flutter/material.dart';

class Addinsta extends StatefulWidget{
  Addinsta({super.key});
  @override
  State<Addinsta> createState() => _Add();
}
class _Add extends State<Addinsta>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add_a_photo,size: 50),
          SizedBox(height: 20),
          Text('Add a Post',style: TextStyle(color: Colors.black,fontSize: 40,fontWeight: FontWeight.bold)),
        ],),
      ),
    );
  }
}