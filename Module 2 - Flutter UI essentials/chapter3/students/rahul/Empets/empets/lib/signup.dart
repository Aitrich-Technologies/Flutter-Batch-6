//import 'package:empets/home.dart';
import 'package:empets/homemain.dart';
import 'package:empets/login.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget{
  Signup({super.key});
  State<Signup> createState() => _login();
}
class _login extends State<Signup>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsetsGeometry.all(20),
      child: SingleChildScrollView(
        child: Padding(padding: EdgeInsetsGeometry.all(20),
        child: Column(children: [

          Image.asset('assets/Screenshot_2025-09-23_102935-removebg-preview.png', width: 150, height: 100),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                  textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  elevation: 10,
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                }, child: Text('Log in')),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                  textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  elevation: 10,
                ),
                onPressed: (){
                
              }, child: Text('Sign in'))
            ],),
SizedBox(height: 30),
          Container(
          width: 500,
          height: 530,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 186, 207, 222),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 10,
                    offset: Offset(4, 4)
                  )
                ],
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),           
        ),
        child: Padding(padding: EdgeInsetsGeometry.all(8),
        child: Column(children: [
           Padding(padding: EdgeInsetsGeometry.all(20),
           child:  TextField(

              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100)
                ),
                label: Text('Name'),
              ),
            )),

             Padding(padding: EdgeInsetsGeometry.all(20),
           child:  TextField(

              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100)
                ),
                label: Text('Phone no / Email'),
              ),
            )),

            Padding(padding: EdgeInsetsGeometry.all(20),
           child:  TextField(

              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100)
                ),
                label: Text('Password'),
              ),
              obscureText: true,
            )),

                        Padding(padding: EdgeInsetsGeometry.all(20),
           child:  TextField(

              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100)
                ),
                label: Text('Confirm Password'),
              ),
              obscureText: true,
            )),


            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                  textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  elevation: 10,
                ),
              onPressed: (){

              Navigator.push(context, MaterialPageRoute(builder: (context) => Mainhome()));

            },
            child: Text('Sign Up')),
            Text('or'),

            Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(30)

              ),
              width: 250,
              height: 50,
              
              child: Row( children: [
                SizedBox(width: 20),
              Icon(Icons.g_mobiledata,size: 45,color: Colors.white,),
              Icon(Icons.facebook,size: 25,color: Colors.white,),
               SizedBox(width: 9),
               Icon(Icons.apple,size: 30,color: Colors.white,),
               SizedBox(width: 9),
              Text('Sign in with ',style: TextStyle(color: Colors.white),)
              ]
              ),),
        ],),
        )
        ),
        ],)
        
        
        )

      ),
      ),
    );
  }
}