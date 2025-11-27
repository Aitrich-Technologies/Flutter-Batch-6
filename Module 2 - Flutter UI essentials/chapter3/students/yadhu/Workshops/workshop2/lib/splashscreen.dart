import 'dart:async';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget{
  const Splashscreen({super.key});
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen>{
  @override
  void initState(){
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () => Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()))
      );
  }


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text("Splash Screen",
        style: TextStyle(color: Colors.white,
        fontSize: 40,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)),
      ),
    );
  }}

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
