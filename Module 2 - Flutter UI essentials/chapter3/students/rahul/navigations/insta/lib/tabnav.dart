import 'package:flutter/material.dart';

class Tabnav extends StatefulWidget{
  Tabnav({super.key});
  @override
  State<Tabnav> createState() => _Tabnav();
}
class _Tabnav extends State<Tabnav>{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, 
      child: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Home'),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(text: 'Buyer'),
              Tab(text: 'Seller'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text(
                'Buyer',
                style: TextStyle(
                color: Colors.black,
                fontSize: 40
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Profile',
                style: TextStyle(
                color: Colors.black,
                fontSize: 30
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Buy a Pet',
                style: TextStyle(
                color: Colors.black,
                fontSize: 20
                ),
              ),
              ],)
            ),
            Center(
              child: 
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text(
                'Seller',
                style: TextStyle(
                color: Colors.black,
                fontSize: 40
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Profile',
                style: TextStyle(
                color: Colors.black,
                fontSize: 30
                ),
              ),
              SizedBox(height: 30),
              Text(
                'pet add',
                style: TextStyle(
                color: Colors.black,
                fontSize: 20
                ),
              ),
              ],)
            ),
          ]
        ),
      ),
    );
  }
}