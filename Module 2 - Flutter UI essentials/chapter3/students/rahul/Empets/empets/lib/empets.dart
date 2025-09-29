import 'dart:async';

import 'package:empets/login.dart';
import 'package:flutter/material.dart';

class Empetz extends StatefulWidget{ //mainclass
  Empetz({super.key});
  State<Empetz> createState() => _splash();
}
class _splash extends State<Empetz>{
  void initState(){
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context) => Login())),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Customize background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/Screenshot_2025-09-23_102935-removebg-preview.png', width: 350, height: 350), // Your logo
            SizedBox(height: 20),
            Text(
              'Welcome',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}