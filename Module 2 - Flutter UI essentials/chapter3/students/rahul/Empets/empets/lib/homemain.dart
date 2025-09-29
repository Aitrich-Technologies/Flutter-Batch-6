import 'package:empets/home.dart';
import 'package:empets/menu.dart';
//import 'package:empets/homebuyer.dart';
//import 'package:empets/homeseller.dart';
import 'package:empets/message.dart';
import 'package:empets/sellerhome.dart';
import 'package:flutter/material.dart';

class Mainhome extends StatefulWidget {
  const Mainhome({super.key});

  @override
  State<Mainhome> createState() => _MainhomeState();
}

class _MainhomeState extends State<Mainhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 226, 227, 227),
        leading: IconButton(onPressed: (){


Navigator.push(context, MaterialPageRoute(builder: (context)=>Menu()));



        },
         icon:Icon(Icons.menu)),
        title: Text('Empetz'),
        centerTitle: true,
        actions: [
          SizedBox(width: 20),
          
          SizedBox(width: 20),
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Mess()));
          }, icon: Icon(Icons.message)),
          SizedBox(width: 20),
        ],
      ),
      
      body: DefaultTabController(length: 2, child: Column(children: [
        Container(
          height: 50,
          color: Color(0xFFEAF6FF),
          child: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            indicator: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            tabs: [
              SizedBox(width: 500,
              child: Tab(text: 'buyer',),),
              SizedBox(width: 500,
              child: Tab(text: 'seller',),),
              

          ]),
        ),
        Expanded(child: TabBarView(children: [
          Mainpage(),
          Mainpagee()
        ]))
      ],)),
    );
  }
}