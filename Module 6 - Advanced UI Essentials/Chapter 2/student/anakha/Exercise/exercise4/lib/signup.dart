import 'package:exercise4/home.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _HomeState();
}

class _HomeState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF1F6),
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text("Home"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 20),
             CircleAvatar(
              radius: 60,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.pets,
                size: 70,
                color: Colors.brown.shade300,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "HAPPY BEAR",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.brown,
              ),
            ),
            SizedBox(height: 30,),
             SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed : (){

                },
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Row(
                  children: [
                   Icon(Icons.email), 
                  Text("Login With Email",
                  style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
             SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed : (){

                },
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Row(
                  children: [
                   Icon(Icons.facebook), 
                  Text("Login With Facebook",
                  style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Did not have an account?"),
                TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
              },
              
              child:Text("Signup"),
            ),
              ],
            )
            )
            
          ],
        ),
      ),
    );
  }
}
  