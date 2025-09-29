
import 'dart:async';



import 'package:flutter/material.dart';

class SplashScreenn extends StatefulWidget{
  SplashScreenn({super.key});
  State<SplashScreenn> createState() => _splash();
}
class _splash extends State<SplashScreenn>{
  void initState(){
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context) => HomeScreen())),
    );


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, // Customize background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/flutter-removebg-preview.png', width: 150, height: 150), // Your logo
            SizedBox(height: 20),
            Text(
              'Splash Screen',
              style: TextStyle(
                color: Colors.white,
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


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[100],
        centerTitle: true,
        title: const Text('Home Screen'),
      ),
      body: const Center(
        child: Text(
          'Welcome to Home Screen!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
