//import 'package:bottom/bottomtab.dart';
import 'package:bottom/facebinsta.dart';
import 'package:bottom/firstpageinsta.dart';
import 'package:bottom/forpassinsta.dart';

import 'package:flutter/material.dart';

class Instagarmm extends StatefulWidget{
  Instagarmm({super.key});
  @override
  State<Instagarmm> createState() => _Insta();
}
class _Insta extends State<Instagarmm>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(   
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('INSTAGRAM',style: TextStyle(fontSize: 40,fontStyle: FontStyle.italic,color: Colors.red,fontWeight: FontWeight.bold),),
            Padding(padding: EdgeInsets.all(80),
            child: 
            Column(children: [
              TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12)
                ),
                hintText: 'User name ,Phone number ,Email id'
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.remove_red_eye_rounded),          
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),       
                hintText: 'Password'
              ),
            ),
            SizedBox(height: 10),    
            TextButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  Forpass()));

            }, child: Text('forgotten password?',style: TextStyle(color: Colors.blue),)),
            
            SizedBox(height: 20),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Mainpage()));
            },
            style: ElevatedButton.styleFrom(
  backgroundColor: Colors.blue,
  shape: RoundedRectangleBorder(  
    borderRadius: BorderRadius.circular(20),
  ),
  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
),
            child: Text('Log in',style: TextStyle(color: Colors.white),)),
            SizedBox(height: 20),
            Text('or'),        
            SizedBox(height: 20),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.facebook,color: Colors.blue),
                TextButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Facebinsta())
                    );
                },
                child: Text('Login with facebook',style: TextStyle(color: Colors.blue),))
              ],
            ),
           ],),
            ),
      ],
        ),
    );   
  }
}