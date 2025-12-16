import 'package:flutter/material.dart';
class sett extends StatefulWidget {
  const sett({super.key});
  @override
  State<sett> createState() => _settState();
}
class _settState extends State<sett> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Center(
        child: Text('Settings Page'),
      ),
    );
  }
}