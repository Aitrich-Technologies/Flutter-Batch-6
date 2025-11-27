import 'package:flutter/material.dart';

class SellerScreen extends StatefulWidget {
  const SellerScreen({super.key});

  @override
  State<SellerScreen> createState() => _SellerScreenState();
}

class _SellerScreenState extends State<SellerScreen> {
  // List of items for the dropdown
  final List<String> _dropdownItems = [
    'Cat',
    'Dog',
    'Bird',
    'Fish',
  ];

  bool _isChecked = false;
  int _selectedValue = 1; // Default age
  double _SliderValue = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image.asset(
          'assets/catpost.jpg',
          fit: BoxFit.cover,
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
            isExpanded: true,
            hint: const Text("Breed"),
            onChanged: (str) {},
            items: _dropdownItems.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //const SizedBox(width: 80),
           Radio(
            value: 0,
            groupValue: _selectedValue,
            onChanged:(int? value){
            setState(() {
              _selectedValue = value!;
            });
           }),
           const Text("Male",style: TextStyle(color: Colors.black)),
           const SizedBox(width: 150),
           Checkbox(
            value: _isChecked,
            onChanged: (bool? value) {
              setState(() {
                _isChecked = value ?? false;
              });
            }),
            const Text("vaccinated")
          ],
        ),
        const SizedBox(height: 20),
        const Text("Pet Age",style: TextStyle(fontSize: 20)),
        const SizedBox(height: 20),
        Slider(
        value: _SliderValue,
        min: 0,
        max: 100,
        divisions: 100,
        onChanged: (double newValue) {
          setState(() {
            _SliderValue = newValue;
          });
        })
      ],
    ));
  }
}
