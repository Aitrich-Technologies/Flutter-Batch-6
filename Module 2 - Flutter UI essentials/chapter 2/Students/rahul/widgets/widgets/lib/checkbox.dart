import 'package:flutter/material.dart';

class Checkboxnew extends StatefulWidget{

  Checkboxnew({super.key});

  @override
  State<Checkboxnew> createState() => _boxState();
}

class _boxState extends State<Checkboxnew> {
     bool isChecked =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('checkbox'),
      centerTitle: true,
      backgroundColor: Colors.blue,
    ),

    body: Row(
      children: [
       Checkbox(value: isChecked,
      onChanged: (bool? value){
        setState(() {
          isChecked = value ?? false;
        });
      },),
      Text('cat'),
      Checkbox(value: isChecked, onChanged: (bool? value){
        setState(() {
          isChecked = value ?? false;
        });
      },
      ),
      Text('dog')
      ],
    )

    );
  }
}