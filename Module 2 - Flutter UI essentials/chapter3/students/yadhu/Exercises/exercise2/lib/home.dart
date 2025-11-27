import 'package:exercise2/notifi.dart';
import 'package:exercise2/profile.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Home Page",
        style: TextStyle(color: Colors.black,fontSize: 20)),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => Notifi()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green[200],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(20)
              )
            ),
            child: Text("Notification",
            style: TextStyle(color: Colors.black))),

            SizedBox(height: 200),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
            },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red[200],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(20)
            )
          ),
          child: Text("Profile",
          style: TextStyle(color: Colors.black))),
          ],
        ),
      )
    );
  }
}