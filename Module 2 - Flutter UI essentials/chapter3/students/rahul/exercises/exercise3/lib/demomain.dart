import 'package:exercise3/demo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/', 
      routes: {
        '/': (context) =>  ScreenA(),
        '/screenB': (context) =>  ScreenB(),
        '/screenC': (context) =>  ScreenC(),
      },
    );
  }
}