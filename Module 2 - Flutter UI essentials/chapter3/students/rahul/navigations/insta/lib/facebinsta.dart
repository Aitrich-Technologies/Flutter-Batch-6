
import 'package:bottom/firstpageinsta.dart';
import 'package:flutter/material.dart';

class Facebinsta extends StatefulWidget{
  Facebinsta({super.key});
  @override
  State<Facebinsta> createState() => _Add();
}
class _Add extends State<Facebinsta>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login with Facebook'),
      ),
      body: Center(
        child: Padding(padding: EdgeInsets.all(80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.facebook,size: 80,color: Colors.blue),
            SizedBox(height: 20),
            TextField(
              
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                labelText: 'Phone number'
              ),
              
            ),
            SizedBox(height: 20),
                        TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                labelText: 'Password'
              ),
              
            ),
            SizedBox(height: 20),

            ElevatedButton(
              
              onPressed: (){
              Navigator.push(
                context,
                 MaterialPageRoute(builder: (context) => Mainpage()));
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