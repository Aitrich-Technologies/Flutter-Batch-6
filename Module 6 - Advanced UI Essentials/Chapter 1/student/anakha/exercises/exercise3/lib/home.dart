import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  title:Text('ListView with End Drawer'),
  actions: [
    Builder(
      builder: (context) {
        return IconButton(
          icon:Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openEndDrawer();
          }
        );
            },
          ),
        ],
      ),
        endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            ListTile(
              leading:Icon(Icons.account_circle),
              title: Text('Account'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
             ListTile(
              leading:Icon(Icons.settings),
              title:Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading:Icon(Icons.help),
              title:Text('Help'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Item ${index + 1}'),
            
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Tapped Item ${index + 1}'),
                ),
              );
            },
          );
        },
      ), 
    );
  }
}