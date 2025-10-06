import 'package:flutter/material.dart';

class Reel extends StatefulWidget{
  Reel({super.key});
  @override
  State<Reel> createState() => _reel();
}
class _reel extends State<Reel>{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, 
      child: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.white,
          
          bottom: TabBar(
            tabs: [
              Tab(text: 'PHOTOS'),
              Tab(text: 'VIDIOS'),
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
                'PHOTOS',
                style: TextStyle(
                color: Colors.black,
                fontSize: 40
                ),
              ),
              SizedBox(height: 30),
              
              ],)
            ),
            Center(
              child: 
              Column(
                
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                Text(
                'VIDIOS',
                style: TextStyle(
                color: Colors.black,
                fontSize: 40
                ),
              ),
              SizedBox(height: 30),
              
              ],)
            ),
          ]
        ),
      ),
    );
  }
}