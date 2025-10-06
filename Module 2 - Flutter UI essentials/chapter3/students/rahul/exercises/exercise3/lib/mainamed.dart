import 'package:exercise3/route.dart';
import 'package:flutter/material.dart';
void main(){
  runApp( 
    Named());
}
class Named extends StatelessWidget{
  Named({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'log',
      routes: {
        'log' : (context) => Login(),
        'ho': (context) =>  Home(),
        'pro' : (context) => Profile(),
        'sett' :(context) => Settings(),  
      },
    );
  }
}