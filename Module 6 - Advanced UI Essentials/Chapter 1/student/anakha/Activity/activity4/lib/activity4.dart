import 'package:flutter/material.dart';

class Activity4 extends StatelessWidget {
  const Activity4({super.key});
  Widget tile({
    required IconData icon,
    required String title,
    required String subtitle,
  }){
    return ListTile(
      leading: Icon(icon,color:  Colors.grey,),
      title: Text(title,style: TextStyle(fontWeight: FontWeight.w500),),
      subtitle: Text(subtitle),
      onTap: (){},
    );
  }

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
          tile(icon: Icons.network_cell, 
          title: "Mobile Network", 
          subtitle: "Manage Network Settings",),
          const Divider(height: 1,),
          tile(icon: Icons.language, 
          title: "Language", 
          subtitle: "Change App Language",),
          const Divider(height: 1,),
          tile(icon: Icons.palette, 
          title: "Theme", 
          subtitle: "Choose Light and Dark Theme",),
          const Divider(height: 1,),
          tile(icon: Icons.volume_up, 
          title: "Sounds & Vibrations", 
          subtitle: "Adjust Sound and Vibration Settings",),
          const Divider(height: 1,),
          tile(icon: Icons.settings, 
          title: "More Settings", 
          subtitle: "Additional Settings Options",),
          const Divider(height: 1,),
        ],
      ),
    );
  }
}