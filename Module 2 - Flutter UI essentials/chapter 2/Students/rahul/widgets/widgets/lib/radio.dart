import 'package:flutter/material.dart';

class Radionew extends StatefulWidget{

  Radionew({super.key});

  @override
  State<Radionew> createState() => _RadionewState();
}

class _RadionewState extends State<Radionew> {
     int _selectedValue =1;    
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
      title: Text('radio button'),
      backgroundColor: Colors.blueAccent,
      centerTitle: true,
      ),

    body: Column(
        children: [
  
          RadioListTile<int>(
              title: Text('male'),
              value: 1,
              groupValue: _selectedValue,
              onChanged: (int? value) {  
                setState(() {
                _selectedValue = value!;
              });
              },
              ),
          RadioListTile(
            title: Text('female'),
            groupValue: _selectedValue,
            value: 0,
            onChanged: (int? value) {
              setState(() {
                _selectedValue = value!;
              });
            },
            )

        ],
      ),

    );
  }
}