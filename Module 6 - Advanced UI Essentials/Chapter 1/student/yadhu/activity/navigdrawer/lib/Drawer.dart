import 'package:flutter/material.dart';

class Navigatedrawer extends StatelessWidget {
  const Navigatedrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Column(
                children: [
                  Text("Drawer Header")
                ],
              )
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home")),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}