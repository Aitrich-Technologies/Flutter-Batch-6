import 'package:flutter/material.dart';
class Listvieww  extends StatelessWidget{
  Listvieww({super.key});
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      backgroundColor: const Color.fromARGB(255, 198, 213, 221),
      title: Text('List View '),
      centerTitle: true,
    ),
    body:  ListView(
      children: [
        ListTile( 
          leading: Icon(Icons.map),
          title: Text('map'),
          onTap: () {
          },
        ),
        ListTile(
          leading: Icon(Icons.photo),
          title: Text('Album'),
          onTap: () {
          },
        ),
        ListTile(
          leading: Icon(Icons.phone),
          title: Text('Phone'),
          onTap: () { 
          },
        )
      ],
    ),
   );
  }
}