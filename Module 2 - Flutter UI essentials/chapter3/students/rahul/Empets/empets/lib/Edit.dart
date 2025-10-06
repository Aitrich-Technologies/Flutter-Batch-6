import 'package:empets/posting.dart';
import 'package:flutter/material.dart';

class Edit extends StatefulWidget {
  const Edit({super.key});

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
  String _con = 'Cat';
  int _selecetedval = 1;
  bool ischeckedd = false;
  bool ischecked = false;
  double slid =1.0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEAF6FF),
      
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsetsGeometry.all(20),
        child: Container(
          width: 500,
          height: 1100,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 186, 207, 222),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 10,
                    offset: Offset(4, 4)
                  )
                ],
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),           
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.grey,
                  child: Icon(Icons.add_a_photo),
                ),
                SizedBox(width: 35),
                 DropdownButton<String>(
                      
                      dropdownColor: Colors.blue,
                      iconEnabledColor: Colors.black,
                      iconDisabledColor: Colors.blue,
                      iconSize: 50,
                      hint: Text('Categories'),
                      value: _con,
                      items: ['Cat', 'Dog', 'Fish', 'Rabbit']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? valuew) {
                        setState(() {
                          _con = valuew!;
                        });
                      },
                    
                  ),
                
              
            
            
            Padding(
              padding: EdgeInsets.all(15),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Gender:'),
                        SizedBox(width: 10),
                        Expanded(
                          child: RadioListTile<int>(
                            title: Text('Male', style: TextStyle(color: Colors.red)),
                            value: 1,
                            groupValue: _selecetedval,
                            onChanged: (int? value) {
                              setState(() {
                                _selecetedval = value!;
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: RadioListTile<int>(
                            title: Text('Female', style: TextStyle(color: Colors.pink)),
                            value: 2,
                            groupValue: _selecetedval,
                            onChanged: (int? value) {
                              setState(() {
                                _selecetedval = value!;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Vaccinated  :  '),
                        Checkbox(
                          value: ischeckedd,
                          onChanged: (bool? value) {
                            setState(() {
                              ischeckedd = value ?? false;
                            });
                          },
                        ),
                        SizedBox(width: 50),
                        Text('Certificate  :  '),
                        Checkbox(
                          value: ischecked,
                          onChanged: (bool? value) {
                            setState(() {
                              ischecked = value ?? false;
                            });
                          },
                        ),
                        
                        
                      ],
                    ),
                    Text('Age :'),
                        Slider(value: slid,
            min: 0.0,
            max: 20.0,
            divisions: 20,
            label: slid.toStringAsFixed(0),
           onChanged: (double? valuee){
            setState(() {
              slid=valuee!;
            });
           }),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Pet Breed name',
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Pet nickname',
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Pet height',
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Pet weight',
                      ),
                    ),
                    
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Owner name,Address,phone number',
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Pet Story',
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Pricing',
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                        textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        elevation: 10,
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Post()));
                      },
                      child: Text('Next'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ), 
        )
      ),
    );
  }
}