import 'package:flutter/material.dart';

class  Exercise2 extends StatelessWidget{
  const Exercise2({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text("Title",style: TextStyle(color: Colors.black,
            fontSize: 40,fontWeight: FontWeight.bold)
            )
          ),
            SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.message),
               SizedBox(width: 450,
               child: Flexible(
                child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna alique. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")),
               )
              ],
            )
          ],
        ),
      )
    );
  }
}