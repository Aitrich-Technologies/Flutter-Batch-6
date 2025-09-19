import 'package:flutter/material.dart';
class MyForm extends StatefulWidget {
  const MyForm({super.key});
  @override
  _MyFormState createState() => _MyFormState();
}
class _MyFormState extends State<MyForm> {
  String _selectedGender = 'male';
  bool ischecked=false;
  double  _Slider = 40.0;
  String? __selectedValue;
  List<String> _dropdownItems = [
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
            const SizedBox(height: 20.0),
            Text('Description',style: TextStyle(fontSize: 18),),
SizedBox(
  width: 500,
  height: 100.0,
  child: TextField(
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      hintText: 'Enter description',
    ),
    expands: true,
    minLines: null,
    maxLines: null,
    textAlignVertical: TextAlignVertical.top,
  ),
),
            const SizedBox(height: 20.0),
            const Text(
              'Select an option',
              style: TextStyle(fontSize: 18.0),
            ),
Row(
  children: [
            DropdownButton<String>(
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
],
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
                  onChanged: (String? value) {
                   setState(() {
                      _selectedGender=value!;
                   });
                  },
                ),
                const Text('Male'),
                SizedBox(width: 20),
                Radio(value: 'female',
                groupValue: _selectedGender,
                onChanged: (String? value){
                  setState(() {
                    _selectedGender= value!;
                  });
                },),
                const Text('Female'), 
              ],
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Age',
              style: TextStyle(fontSize: 18.0),
            ),
            Slider(
              value: _Slider,
              min: 0.0,
              max: 100.0,
              divisions: 100,
              label: _Slider.toStringAsFixed(0),
              onChanged: (double neewvalue) {
                setState(() {
                  _Slider=neewvalue;
                });
              },
            ),
            const SizedBox(height: 20.0),
            Row(
              children: [
                Checkbox(
                  value: ischecked,
                  onChanged: (bool? valuee) {
                    setState(() {
                      ischecked =valuee ?? false;
                    });
                  },
                ),
                const Text('verify'),
              ],
            ),
            const SizedBox(height: 20.0),
            Container(
              child: Image.asset(
                'assets/catpost.jpg',
                fit: BoxFit.cover,
              ),
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