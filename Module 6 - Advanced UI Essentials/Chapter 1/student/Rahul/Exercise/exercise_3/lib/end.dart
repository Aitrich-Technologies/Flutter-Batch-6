import 'package:exercise_3/acc.dart';
import 'package:exercise_3/help.dart';
import 'package:exercise_3/sett.dart';
import 'package:flutter/material.dart';
class enddrawer extends StatefulWidget {
  const enddrawer({super.key});
  @override
  State<enddrawer> createState() => _enddrawerState();
}
class _enddrawerState extends State<enddrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView With End Drwer',style: TextStyle(fontSize: 30),),
        backgroundColor: Colors.grey,
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color:Colors.blue),
              child: Column(
              children: [
                Text('End Drawer',style: TextStyle(fontSize: 20,color: Colors.white),)
              ],
            )
            ,),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Account'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>acc()));
              }
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>sett()));
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>help()));
              },
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context,int index)
        {
          return ListTile(
            title: Text('Item ${index +1}'),
          );
        }
      ),
    ); 
  }
}