import 'package:flutter/material.dart';

class hii extends StatefulWidget {
  const hii({super.key});

  @override
  State<hii> createState() => _hiiState();
}

class _hiiState extends State<hii> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Text('HI'),
      ),
    );
  }
}