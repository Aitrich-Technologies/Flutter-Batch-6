import 'package:flutter/material.dart';

class Listtale extends StatefulWidget {
  const Listtale({super.key});

  @override
  State<Listtale> createState() => _ListtaleState();
}

class _ListtaleState extends State<Listtale> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime,
        title: Text("Settings",style: TextStyle(fontSize: 30),),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.network_cell),
            title: Text('Mobile Network',style: TextStyle(fontSize: 20),),
            subtitle: Text('Manage network settings'),
            onTap: () {
              
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Language',style: TextStyle(fontSize: 20),),
            subtitle: Text('Change app language'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.color_lens),
            title: Text('Theme',style: TextStyle(fontSize: 20),),
            subtitle: Text('Choose light or dark theme'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.volume_up),
            title: Text('Sounds & Vibration',style: TextStyle(fontSize: 20),),
            subtitle: Text('Adjust sound and vibration settings'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('More Settings',style: TextStyle(fontSize: 20),),
            subtitle: Text('Additional settings options'),
          ),
          Divider(),
        ],
      ),
    );
  }
}