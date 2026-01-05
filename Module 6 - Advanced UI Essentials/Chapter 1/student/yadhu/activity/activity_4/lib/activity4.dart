import 'package:flutter/material.dart';

class Activity4 extends StatefulWidget {
  const Activity4({super.key});

  @override
  State<Activity4> createState() => _Activity4State();
}

class _Activity4State extends State<Activity4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Settings",style: TextStyle(color: Colors.black,fontSize: 20)),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.network_cell_outlined),
            title: Text("Mobile Network"),
            subtitle: Text("Manage network settings"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.language_outlined),
            title: Text("Language"),
            subtitle: Text("Change app language"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.color_lens),
            title: Text("Theme"),
            subtitle: Text("Choose light or dark theme"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.volume_up),
            title: Text("Sounds & Vibration"),
            subtitle: Text("Adjust sound and vibration settings"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("More Settings"),
            subtitle: Text("Additional settings options"),
          )
        ],
      )
    );
  }
}