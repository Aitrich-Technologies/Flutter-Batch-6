import 'package:flutter/material.dart';

class EndDrawer extends StatefulWidget {
  const EndDrawer({super.key});

  @override
  State<EndDrawer> createState() => _EndDrawerState();
}

class _EndDrawerState extends State<EndDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView with End Drawer"),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("End Drawer",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold))
                ],
              )),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("Account"),
              ),
              SizedBox(height: 15),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
              ),
              SizedBox(height: 15),
              ListTile(
                leading: Icon(Icons.help_outlined),
                title: Text("Help"),
              )
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index){
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 25,vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Item: $index",style: TextStyle(color: Colors.black,fontSize: 20)),
              ],
            ),
          );
        }),
    );
  }
}