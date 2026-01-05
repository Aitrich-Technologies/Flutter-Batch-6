import 'package:flutter/material.dart';

class Activity4 extends StatelessWidget {
  const Activity4({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Settings'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.network_cell,color: Colors.grey,),
            title:Text( "Mobile Network", ),
            subtitle:Text( "Manage Network Settings",),
          ), 
          Divider(height: 1,),
          ListTile(
            leading: Icon(Icons.language,color: Colors.grey,),
            title:Text( "Language", ),
            subtitle:Text( "Change App Language",),
          ),
          Divider(height: 1,),
          ListTile(
            leading: Icon(Icons.palette,color: Colors.grey,),
            title:Text( "Theme", ),
            subtitle:Text( "Choose Light and Dark Theme",),
          ),
         Divider(height: 1,),
          ListTile(
            leading: Icon(Icons.volume_up,color: Colors.grey,),
            title:Text( "Sounds & Vibrations", ),
            subtitle:Text( "Adjust Sounds and Vibration Settings",),
          ),
          Divider(height: 1,),
          ListTile(
            leading: Icon(Icons.settings,color: Colors.grey,),
            title:Text( "More Settings", ),
            subtitle:Text( "Additional Settings Options",),
          ),
          Divider(height: 1,),
        ],
      ),
    );
  }
}