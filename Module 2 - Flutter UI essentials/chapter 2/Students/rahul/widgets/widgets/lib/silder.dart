import 'package:flutter/material.dart';

class Slidernew extends StatefulWidget{

  Slidernew({super.key});

  @override
  State<Slidernew> createState() => _SliderState();
}

class _SliderState extends State<Slidernew> {
     double _sliderValue = 50.00; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('slider'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Slider(value: _sliderValue,
        min: 0.0,
        max: 100.0,
        divisions: 100,
        label: _sliderValue.toStringAsFixed(0),
        onChanged: (double newValue){
          setState(() {
            _sliderValue=newValue;
          });
        }),
      ),
    );
  }
}