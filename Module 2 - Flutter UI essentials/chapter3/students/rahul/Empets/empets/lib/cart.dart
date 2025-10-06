import 'package:flutter/material.dart';

class Car extends StatefulWidget {
  const Car({super.key});

  @override
  State<Car> createState() => _ProfileState();
}

class _ProfileState extends State<Car> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAF6FF),
      body: Padding(padding: EdgeInsetsGeometry.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Cart',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          Divider(height: 10, thickness: 1, indent: 0, endIndent: 0, color: Colors.black),
        ],
      ),
      ),
      
    );
  }
}