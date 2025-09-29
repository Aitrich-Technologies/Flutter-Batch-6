//import 'package:empets/homeseller.dart';
import 'package:empets/CatPage.dart';
import 'package:empets/DogPage.dart';
//import 'package:empets/sellerhome.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  Home({super.key});
  State<Home> createState() => _buyer();
}
class _buyer extends  State<Home>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAF6FF),
      body:SingleChildScrollView(
        child:  Center(
        child: Column(
          children: [
            SizedBox(height: 10),
            
            SizedBox(height: 30),
            Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 70),
          child: TextField(
              
              decoration: InputDecoration(
                suffixIcon: IconButton(onPressed: (){
                  
                }, icon: Icon(Icons.search)),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                
              ),
              
              
            ),),
             GridView.count(
              shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 2, 
        mainAxisSpacing: 20.0, 
        crossAxisSpacing: 20.0, 
        padding: const EdgeInsets.all(16.0),
        children: [
          
          InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Catpage()),
        );
      },
      child: Container(
        color: Colors.green,
        child: Image.asset('assets/cat.jpg', fit: BoxFit.cover),
      ),
    ),
    InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Dogpage()),
        );
      },
      child: Container(
        color: Colors.purpleAccent,
        child: Image.asset('assets/dog.png', fit: BoxFit.cover),
      ),
    ),
          Container(
            color: Colors.purpleAccent,
            child: Image.asset(
              'assets/fish.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.purpleAccent,
            child: Image.asset(
              'assets/parrot.jpg',
              fit: BoxFit.cover,
              
            ),
          ),
          Container(
            color: Colors.pinkAccent,
            child: Image.asset(
              'assets/pig.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.purpleAccent,
            child: Image.asset(
              'assets/rabit.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.green,
            child: Image.asset(
              'assets/cat.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.purpleAccent,
            child: Image.asset(
              'assets/rabit.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
          ],
        ),
      ),
      ),
    );
  }
}

