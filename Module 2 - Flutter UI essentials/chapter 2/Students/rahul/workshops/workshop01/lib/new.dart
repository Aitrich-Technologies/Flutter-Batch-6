import 'package:flutter/material.dart';
class Newworkk extends StatefulWidget{
  Newworkk({super.key});
  @override
  State<Newworkk> createState() => _Newwork();
}
class _Newwork extends State<Newworkk> {
  int  _selectedvalue = 1;
  String? __selectedValue;
  // List of items for the dropdown
  final List<String> _dropdownItems = [
    'Cat',
    'Dog',
    'Bird',
    'Fish',
  ];
  bool _isChecked = false;
  double _currentAge = 1; 
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
      children: [
        Container(
          child: Image.asset(
            'assets/catpost.jpg',
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Pet Name',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: DropdownButton<String>(
             value: __selectedValue,
              hint: const Text("Breed"),         
              items: _dropdownItems.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue){
              setState(() {
                __selectedValue= newValue;
              });
              },
            ),
        ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(value: 1,
                groupValue: _selectedvalue,
                onChanged: (int? value){
                  setState(() {
                    _selectedvalue =value!;
                  });
                },
                ),
                Text('male'),
                SizedBox(width: 20),
                Radio(value: 2,groupValue: _selectedvalue,
                onChanged: (int? value){
                  setState(() {
                    _selectedvalue=value!;
                  });
                },
                ),
                Text('female'),
                SizedBox(width: 40),
                            Checkbox(
                              value: _isChecked,
                            onChanged: (bool? value){
                                setState(() {
                                  _isChecked = value ?? false;
                                });
                            }),
                            Text('vaccinated'),      
                  ]),
                SizedBox(height: 30),
                      Text('Pet Age',style: TextStyle(fontSize: 25),),
                        Slider(
                          min: 0.0,
                          max: 100.0,
                          divisions: 100,
                          label: _currentAge.toStringAsFixed(0),
                          value: _currentAge,
                          onChanged: (double newvalue){
                          setState(() {
                   _currentAge = newvalue;
                }
              );
            }
          ),
        ],
      )
    );
  }
}