import 'package:flutter/material.dart';
class acc extends StatefulWidget {
  const acc({super.key});
  @override
  State<acc> createState() => _accState();
}
class _accState extends State<acc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
      ),
      body: Center(
        child: Text('Account Page'),
      ),
    );
  }
}