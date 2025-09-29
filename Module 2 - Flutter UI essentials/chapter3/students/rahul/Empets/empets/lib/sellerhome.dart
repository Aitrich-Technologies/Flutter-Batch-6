//import 'package:empets/homebuyer.dart';
import 'package:empets/Edit.dart';
//import 'package:empets/add.dart';
import 'package:empets/homeseller.dart';
import 'package:empets/profile.dart';
import 'package:flutter/material.dart';

class Mainpagee extends StatefulWidget{
  Mainpagee({super.key});
  @override
  State<Mainpagee> createState() => _main();
}
class _main extends State<Mainpagee>{

  int _currentindex = 0 ;

  final List<Widget> _pages =[
    Seller(),
    Edit(),
    Profile(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: _pages [_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        onTap: (value) {
          setState(() {
            _currentindex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.add),
          label: 'Add'),
          
         
          
          BottomNavigationBarItem(icon: Icon(Icons.person_2_rounded),
          label: 'Profile'),
        ]
      ),
    );
  }
}