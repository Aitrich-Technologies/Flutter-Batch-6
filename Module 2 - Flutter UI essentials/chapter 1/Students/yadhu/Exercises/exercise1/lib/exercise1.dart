import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget{
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          width: 400,
          height: 600,
          // padding: EdgeInsets.all(50),
          //margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Login",style: TextStyle(color: Colors.green,fontSize: 50,fontWeight: FontWeight.bold)),
              SizedBox(height: 100),
              Padding(padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Username",
                  border: OutlineInputBorder(),
                ),
              ),
              ),
              SizedBox(height: 30),
              Padding(padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
              ),
              ),
              SizedBox(height: 30),
              ElevatedButton(onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: Text("login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))),
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.facebook,color: Colors.blue,size: 50),
                  SizedBox(width: 80),
                  Icon(Icons.mail,color: Colors.red,size: 50),
                  SizedBox(width: 80,),
                  Icon(Icons.mobile_screen_share,size: 50),
                ],
              ),
              SizedBox(height: 80),
              RichText(text: TextSpan(
                children: [
                  TextSpan(
                    text: "Already have an account",
                    style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),
                    TextSpan(
                      text: "Signup",
                      style: TextStyle(color: Colors.red,fontSize: 15,fontWeight: FontWeight.bold)
                    )
                ] 
              ),),
            ],
          ),
        ),
      )
    );
  }
}