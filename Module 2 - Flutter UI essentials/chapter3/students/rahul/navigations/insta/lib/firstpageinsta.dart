import 'package:bottom/addinsta.dart';
import 'package:bottom/bottomtab.dart';
import 'package:bottom/profileinsta.dart';
import 'package:bottom/reelinsta.dart';
import 'package:bottom/searchinsta.dart';
import 'package:flutter/material.dart';

class Mainpage extends StatefulWidget{
  Mainpage({super.key});
  @override
  State<Mainpage> createState() => _main();
}
class _main extends State<Mainpage>{

  int _currentindex = 0 ;

  final List<Widget> _pages =[
    Homepage(),
    Search(),
    Addinsta(),
    Reel(),
    Prof(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 226, 227, 227),
        title: Text('INSTAGRAM'),
        actions: [
          SizedBox(width: 20),
          Icon(Icons.favorite,color: Colors.red,),
          SizedBox(width: 20),
          Icon(Icons.message,),
          SizedBox(width: 20),
        ],
      ),
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
          BottomNavigationBarItem(icon: Icon(Icons.search),
          label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.add),
          label: 'ADD'),
          BottomNavigationBarItem(icon: Icon(Icons.photo_sharp),
          label: 'Reels'),
          BottomNavigationBarItem(icon: Icon(Icons.person_2_rounded),
          label: 'Profile'),
        ]
      ),
    );
  }
}