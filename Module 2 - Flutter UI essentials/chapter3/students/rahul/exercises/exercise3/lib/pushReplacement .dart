import 'package:flutter/material.dart';
class Pushr extends StatefulWidget {
  const Pushr({super.key});@override
  State<Pushr> createState() => _PushrState();}
class _PushrState extends State<Pushr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
        child: Padding(padding: EdgeInsetsGeometry.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ TextField(
              decoration: InputDecoration(
                hint: Text('Username'),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hint: Text('Password'),  
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            elevation: 5,
          ),
          onPressed: (){  
            Navigator.push(
              context, MaterialPageRoute(
                builder: (context)=>Logout()));
          }, 
          child: Text('Login',style: TextStyle(color: Colors.white),)),
          ],
        ),
        ),
      ),
    );  
  }
}
 class Logout extends StatefulWidget {
  const Logout({super.key});
  @override
  State<Logout> createState() => _LogoutState();
}
class _LogoutState extends State<Logout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Home'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            elevation: 5,
          ),
          onPressed: (){
            Navigator.pushReplacement(
              context, MaterialPageRoute(
                builder: (context)=>Pushr()));
          }, 
          child: Text('Logout',style: TextStyle(
            color: Colors.white
            ),)), 
      ),
    );
  }
} 