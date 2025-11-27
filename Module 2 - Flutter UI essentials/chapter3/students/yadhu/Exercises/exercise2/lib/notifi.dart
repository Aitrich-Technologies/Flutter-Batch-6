import 'package:flutter/material.dart';

class Notifi extends StatelessWidget {
  const Notifi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[200],
        title: Text("Notification",
        style: TextStyle(color: Colors.black,fontSize: 20)),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(onPressed: () {
          Navigator.pop(context);
        }, 
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(20)
          )
        ),
        child: Text("Back to Home page",style: TextStyle(color: Colors.black))),
      ),
    );
  }
}