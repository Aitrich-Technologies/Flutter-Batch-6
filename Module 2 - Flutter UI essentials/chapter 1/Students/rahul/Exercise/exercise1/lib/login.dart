import 'package:flutter/material.dart';

class Loginn extends StatelessWidget{
  Loginn({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          width: 300,
          height: 480,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(40),
            ),
            child: Column(
              children: [
                SizedBox(height: 20),
                Text('LOGIN',
                style: TextStyle(fontSize: 40,color: Colors.green),
                ),
                SizedBox(height: 40),
                 TextField(
                  
                  decoration: InputDecoration(
                    labelText: 'User name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)
                    )
                  ),
                ),
                
             SizedBox(height: 20),

              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8)
                    ),
                  ),
                ),
              SizedBox(height: 20),

              ElevatedButton(onPressed: 
              () {

              },
              style: ElevatedButton.styleFrom(

                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),

              ),
              child: Text('LOGIN',style: TextStyle(color: Colors.white,
              fontSize: 10),
              ),
              ),
              SizedBox(height: 20),
Row(
  children: [
    SizedBox(width: 15),
    IconButton(icon: Icon(Icons.facebook),
    onPressed: (){

    },
    color: Colors.blue,
    iconSize: 40.0,
    ),

    SizedBox(width: 30),
    IconButton(onPressed: (){

    },
     icon: Icon(Icons.mail),
     color: Colors.red,
     iconSize: 40.0,
     ),
SizedBox(width: 40),

     IconButton(onPressed: (){

     },
      icon: Icon(Icons.mobile_screen_share),
      iconSize: 33.0,
      )
  ],
),
SizedBox(height: 30),
Row(
  
  children: [
    SizedBox(width: 20),
    Text('Alredy have an account',style: TextStyle(fontSize: 15),),
    TextButton(onPressed:(){

    },
    child: Text('signup',style: TextStyle(color: Colors.red),),
    )
  ],
),
              ],
              
            ),
            
          ),
        ),
      
    );

  }
}