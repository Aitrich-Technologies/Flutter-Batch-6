import 'package:empets/homebuyer.dart';
import 'package:empets/cart.dart';
//import 'package:empets/homebuyer.dart';
import 'package:empets/profile.dart';
//import 'package:empets/message.dart';
import 'package:flutter/material.dart';

class Mainpage extends StatefulWidget{
  Mainpage({super.key});
  @override
  State<Mainpage> createState() => _main();
}
class _main extends State<Mainpage>{

  int _currentindex = 0 ;

  final List<Widget> _pages =[
    Homes(),
    Car(),
    Profile()

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
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),
          label: 'Cart'),
          
         
          
          BottomNavigationBarItem(icon: Icon(Icons.person_2_rounded),
          label: 'Profile'),
        ]
      ),
    );
    
  }
}