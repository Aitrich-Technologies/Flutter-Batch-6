import 'package:exercise_2/prof.dart';
import 'package:exercise_2/settings.dart';
import 'package:flutter/material.dart';
class Drawerr extends StatefulWidget {
  const Drawerr({super.key});

  @override
  State<Drawerr> createState() => _DrawerrState();
}
class _DrawerrState extends State<Drawerr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      ),
      drawer: Drawer(       
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Drawer Header',style: TextStyle(fontSize: 20,color: Colors.white),)
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => prof()));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>sett()));
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}