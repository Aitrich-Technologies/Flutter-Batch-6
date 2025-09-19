import 'package:flutter/material.dart';

class Newwidgets extends StatefulWidget{

  Newwidgets({super.key});

  @override

  State<Newwidgets> createState() => _Newwidgets();

}

class _Newwidgets extends State<Newwidgets> {

  int _selecetedval = 1; //radio
  int _sel =6;

  bool isChecked = false; //checkbox
  bool ischeckedd =false;
  bool ische =false;

  double Slidervalue = 5.0; //slider 
  double petheight = 50.0; 
  double slid =10.0;

  String? _breednames = 'cat breeds'; //dropdownbutton
  String? _dognames = 'dog breeds';
  String? _con ='Ind';

  @override

  Widget build(BuildContext context){

    return  Scaffold(

      appBar: AppBar(
        title: Text('radio,checkbox,slider,droplist'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),

      body:SingleChildScrollView( 
      child:  Column(
          
          children: [
           
            RadioListTile(
              hoverColor: Colors.red,

              activeColor: Colors.black,
              value: 6,
              title: Text('red'),
              
              groupValue: _sel,
              onChanged: (int? valuee){
                setState(() {
                  _sel=valuee!;
                });
              },
            ),
            RadioListTile(
              hoverColor: Colors.blue,
              activeColor:Colors.black,
              value: 7,
            title: Text('blue'),
            groupValue: _sel,
            onChanged: (int? valuee){
              setState(() {
                _sel=valuee!;
              });
            }),

            Row(children: [
              Checkbox(
                hoverColor: Colors.deepOrange,
                activeColor: Colors.pink,
                value: ische, onChanged: (bool? value){
                setState(() {
                  ische= value ?? false;
                });
              }),
              Text('< click one >'),
              Checkbox(value: ische,
              hoverColor: Colors.lightGreen, onChanged: (bool? value){
                setState(() {
                  ische= value ?? true;
                });
              },),

            ],),

          Slider(value: slid,
            min: 0.0,
            max: 100.0,
            divisions: 100,
            label: slid.toStringAsFixed(0),
           onChanged: (double? valuee){
            setState(() {
              slid=valuee!;
            });
           }),

           DropdownButton(
            focusColor: Colors.amber,
            dropdownColor: Colors.green,
            iconEnabledColor: Colors.red,
            iconDisabledColor: Colors.blue,
            iconSize: 50,
            
            value: _con,
            items: ['Ind','pak','aus']
           .map<DropdownMenuItem<String>>((String value){
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value)
                );
           }
           ).toList(),
            onChanged: (String? valuew){
              setState(() {
                _con=valuew;
              });
           }),












            RadioListTile<int>(
              title: Text('Cat',style: TextStyle(color: Colors.pink),),
              value: 1,
              groupValue: _selecetedval,
              onChanged: (int? value) {
                setState(() {
                  _selecetedval = value!;
                });
              },
              ),

            RadioListTile<int>(
              title: Text('Dog',style: TextStyle(color: Colors.brown),),
              value: 2,
              groupValue: _selecetedval,
              onChanged: (int? value) {
                setState(() {
                  _selecetedval = value!;
                });
              },
              ),
              RadioListTile(
              title: Text('fish',style: TextStyle(color: Colors.lime),),
              value: 3,
              groupValue: _selecetedval,
              onChanged: (int? value){
                setState(() {
                  _selecetedval = value!;
                });
              }
              ),

              Row(
              children: [
                Checkbox(
            
              value: isChecked, 
              onChanged: (bool?  value) {
               setState(() {
                isChecked = value ?? false;
              });
            },
            ),
            Text('Vaccinated',style: TextStyle(color: Colors.green),),
            SizedBox(width: 50),

            Checkbox(
              value: ischeckedd,
              onChanged: (bool? value){
                setState(() {
                  ischeckedd = value ?? false;
                });
              }
              ),
              Text('NO'),

              ],
            ),
            
            
            Text('Pet - Age',style: TextStyle(color: Colors.deepPurple),),

            Slider(
                min: 0.0,
                max: 20.0,
                divisions: 100,
                label: Slidervalue.toStringAsFixed(0),
                value: Slidervalue,
                onChanged: (double newValue){
                  setState(() {
                    Slidervalue = newValue;
                  });
                }
                
                ),

                Text("pets height in cm"),

                Slider(
                value: petheight ,
                min: 0.0,
                max: 100.0,
                divisions: 100,
                thumbColor: Colors.amber,
                activeColor: Colors.black,
                inactiveColor: Colors.blue,
                
                label: petheight.toStringAsFixed(0),
                 onChanged: (double newalue){
                  setState(() {
                    petheight = newalue;
                  });
                 }
                 ),
                 SizedBox(height: 20),
            Text('CAT breeds'),
            DropdownButton(
            value: _breednames,
            items: ['cat breeds','black cat','super cat',]
            .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
               
            }).toList(),
            onChanged: (String? newwVal){
              setState(() {
                _breednames=newwVal;
              });
            }
            ),
            SizedBox(height: 20),
            Text('Dog breeds'),
            DropdownButton(
              value: _dognames,
              items: ['dog breeds','bulldog','german sheperd']
              .map<DropdownMenuItem<String>>((String value){
               return DropdownMenuItem<String>(
                value: value,
                child: Text(value)
                ); 
              }).toList(),
            onChanged: (String? newww){
              setState(() {
                _dognames = newww;
              });
            }
            ),

          ],
        ),
      ),
    );
  }  
}

