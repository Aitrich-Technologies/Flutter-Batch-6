import 'package:flutter/material.dart';

class Exp1 extends StatefulWidget {
  const Exp1({super.key});

  @override
  State<Exp1> createState() => _Exp1State();
}

class _Exp1State extends State<Exp1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
          child: Text('Title',style: TextStyle(fontSize: 40),),),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.message),
              Expanded(
                child: Text('Lorem ipsum is simply dummy text of the printing and typesetting'))
            ],
          )
        ],
      ),
    );
  }
}