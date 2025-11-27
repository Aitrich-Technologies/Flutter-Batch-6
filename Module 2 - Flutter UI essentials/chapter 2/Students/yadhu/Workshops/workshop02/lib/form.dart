// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final String _selectedGender = 'male';

  final List<String> _dropdownItems = [
    ' Cat',
    'Dog',
    'Bird',
    'Fish',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[300],
        centerTitle: true,
        title: const Text(
          'Form',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Name',
              style: TextStyle(fontSize: 18.0),
            ),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your name',
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Description',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(
              height: 150,
              child: TextField(
                maxLines: null,
                expands: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Description',
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Select an option',
              style: TextStyle(fontSize: 18.0),
            ),
            DropdownButton<String>(
              hint: const Text("Breed"),
              onChanged: (String? S) {},
              items: _dropdownItems.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Gender',
              style: TextStyle(fontSize: 18.0),
            ),
            Row(
              children: [
                Radio(
                  value: 'male',
                  groupValue: _selectedGender,
                  onChanged: (s) {},
                ),
                const Text('Male'),
                const SizedBox(width: 20),
              Radio(
                  value: 'Female',
                  groupValue: _selectedGender,
                  onChanged: (s) {},
                ),
                const Text('Female'),
              ],
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Age',
              style: TextStyle(fontSize: 18.0),
            ),
            Slider(
              value: 1,
              min: 1,
              max: 100,
              divisions: 100,
              onChanged: (double value) {},
            ),
            const SizedBox(height: 20.0),
            Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: (bool? bool) {},
                ),
                const Text('verify'),
              ],
            ),
            const SizedBox(height: 20.0),
            Image.asset(
              'assets/catpost.jpg',
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20.0),
            const Text(
              'This is some text with custom font',
              style: TextStyle(
                fontSize: 18.0,
                fontFamily: 'Roboto',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
