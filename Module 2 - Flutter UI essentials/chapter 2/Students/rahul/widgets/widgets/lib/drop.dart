import 'package:flutter/material.dart';

class Dropdownn extends StatefulWidget{

  Dropdownn({super.key});

  @override
  State<Dropdownn> createState() => _DropdownnState();
}

class _DropdownnState extends State<Dropdownn> {
    String? _selectedItem = 'Item1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dropdown button'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: 
        DropdownButton(
          value: _selectedItem,
          items: ['Item1', 'Item2', 'Item3', 'Item 4']
          .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
              );
          }).toList(),
          onChanged: (String? newValue){
              setState(() {
                _selectedItem=newValue;
              });
          },
          ),
      ),
    );
  }
}


  