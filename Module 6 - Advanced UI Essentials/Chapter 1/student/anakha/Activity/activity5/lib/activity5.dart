import 'package:flutter/material.dart';

class Activity5 extends StatelessWidget {
  const Activity5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Prefix and Suffix Icon',style: TextStyle(fontSize: 28),),
        centerTitle: true,
      ),
      body: Center(
        child:SizedBox(
          width: 450,
          child: TextField(
          decoration: InputDecoration(
            hintText: 'Enter Text',
            suffixIcon: Icon(Icons.remove_red_eye),
            prefix: Icon(Icons.mail,color: Colors.black,),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.horizontal(),
            )
          ),
        ),
      ),
      ),
    );
  }
}