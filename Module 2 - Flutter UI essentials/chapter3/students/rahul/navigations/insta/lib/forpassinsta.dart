import 'package:flutter/material.dart';

class Forpass extends StatefulWidget{
  Forpass({super.key});
  @override
  State<Forpass> createState() => _Add();
}
class _Add extends State<Forpass>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        
        title: Text('Change Password'),
      ),
      body: Center(
        child: Padding(padding: EdgeInsets.all(80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                labelText: 'New Password'
              ),
              
            ),
            SizedBox(height: 20),
                        TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                labelText: 'Re-enter New Password'
              ),
              
            ),
            SizedBox(height: 20),

            ElevatedButton(
              
              onPressed: (){
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue
            ),
             child: Text('Enter',style: TextStyle(color: Colors.white),))
          ],
        ),
        ),
      ),
    );
  }
}