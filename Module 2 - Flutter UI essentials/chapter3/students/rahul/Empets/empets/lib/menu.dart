import 'package:empets/login.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEAF6FF),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Menu',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_circle_left_rounded)),

      ),
      body: Padding(padding: EdgeInsetsGeometry.all(20),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            child: Icon(Icons.person_4_outlined),
            
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                  textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  elevation: 10,
                ),
              onPressed: (){
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                builder: (context)=>Login()), 
                (Route<dynamic> route)=>false);

            },
            child: Text('Logout')),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                  textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  elevation: 10,
                ),
              onPressed: (){
              

            },
            child: Text('Settings')),
            
        ],
      ),
      ),
    );
  }
}