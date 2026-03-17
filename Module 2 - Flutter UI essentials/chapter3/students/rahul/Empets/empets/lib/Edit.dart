import 'package:empets/posting.dart';
import 'package:flutter/material.dart';

class Edit extends StatefulWidget {
  const Edit({super.key});

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
TextEditingController namectr=TextEditingController();
TextEditingController nikctr=TextEditingController();
TextEditingController pethctr=TextEditingController();
TextEditingController petwctr=TextEditingController();
TextEditingController addctr=TextEditingController();
TextEditingController stryctr=TextEditingController();
TextEditingController pricctr=TextEditingController();

String? nameerror;
String? nikerror;
String? petherror;
String? petwerror;
String? adderror;
String? stryerror;
String? pricerror;

String? nameval(String name){
  if(name.isEmpty){
    return"error";
  }
  return null;
}
String? nikval(String nik){
  if(nik.isEmpty){
    return"error";
  }
  return null;
}
String? pethval(String peth){
  if(peth.isEmpty){
    return"error";
  }
  return null;
}
String? petwval(String petw){
  if(petw.isEmpty){
    return"error";
  }
  return null;
}
String? addval(String add){
  if(add.isEmpty){
    return"error";
  }
  return null;
}
String? stryval(String stry){
  if(stry.isEmpty){
    return"error";
  }
  return null;
}
String? pricval(String pric){
  if (RegExp(r'[a-z]').hasMatch(pric)) {
      return 'error';
    }
  if(pric.isEmpty){
    return"error";
  }
  return null;
}


  String _con = 'Cat';
  int _selecetedval = 1;
  bool ischeckedd = false;
  bool ischecked = false;
  double slid =1.0;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFFFFF8EE),
      appBar: AppBar(backgroundColor: Color(0xFFA47148),foregroundColor: Colors.white,
    elevation: 3,),
      
      
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsetsGeometry.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            
                Container(
                  width: 500,
                  height: 250,
  
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFF8EE), // Color goes inside BoxDecoration
                    borderRadius: BorderRadius.circular(12), // Rounded corners
                    border: Border.all(
                      color: Color(0xFFA47148),
                      width: 2,
                    ),
                     boxShadow: [ // Add a list of shadows
                  BoxShadow(
                    color: Color(0xFFD7CCC8),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: const Offset(0, 3), // controls shadow position
                  ),
                ],
                ),
                  child: Column(
                    children: [
                      
                                              CircleAvatar(
                                                radius: 80,
                                                backgroundColor: Colors.white,
                                                child: Icon(Icons.add_a_photo,color: Color(0xFF5D4037),size: 50,)),
                      DropdownButton<String>(
                        
                        dropdownColor: Color(0xFFFFF8EE),
                        iconEnabledColor: Color(0xFFA47148),
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
                    ],
                  ),
                ),
                SizedBox(width: 35),
                 
                
              
            
            
            Column(
              children: [
            
                Container(
                  height: 330,
              
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFFFFF8EE), // Color goes inside BoxDecoration
                borderRadius: BorderRadius.circular(12), // Rounded corners
                border: Border.all(
                  color: Color(0xFFA47148),
                  width: 2,
                ),
                 boxShadow: [ // Add a list of shadows
              BoxShadow(
                color: Color(0xFFD7CCC8),
                spreadRadius: 3,
                blurRadius: 5,
                offset: const Offset(0, 3), // controls shadow position
              ),
            ],
            ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          
                          Text('Gender:'),
                          
                          Expanded(
                            child: RadioListTile<int>(
                              hoverColor: Color(0xFFA47148),
                              activeColor: Color.fromARGB(255, 55, 39, 26),
                              // title: Text('Male', style: TextStyle(color: Colors.red)),
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
                              hoverColor: Color(0xFFA47148),
                              activeColor: Color.fromARGB(255, 55, 39, 26),
                              // title: Text('Female', style: TextStyle(color: Colors.pink)),
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
                          SizedBox(width: 80,),
                          Text('Male', style: TextStyle(color: Colors.red)),
                          SizedBox(width: 65,),
                          Text('Female', style: TextStyle(color: Colors.pink)),
                        ],
                      ),
                      Divider(),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text('Vaccinated  :  '),
                              Checkbox(
                            hoverColor: Color(0xFFA47148),
                                  activeColor: Color.fromARGB(255, 55, 39, 26),
                            value: ischeckedd,
                            onChanged: (bool? value) {
                              setState(() {
                                ischeckedd = value ?? false;
                              });
                            },
                          ),
                            ],
                          ),
                          
                                               
                          Row(
                            children: [
                              Text('Certificate  :  '),
                              Checkbox(
                            hoverColor: Color(0xFFA47148),
                                  activeColor: Color.fromARGB(255, 55, 39, 26),
                            value: ischecked,
                            onChanged: (bool? value) {
                              setState(() {
                                ischecked = value ?? false;
                              });
                            },
                          ),
                            ],
                          ),
                          
                        ],
                      ),
                  Divider(),
                  Text('Age :'),
                    Slider(value: slid,
                    thumbColor: Color.fromARGB(255, 55, 39, 26),
                    activeColor: Color(0xFFA47148),
                        min: 0.0,
                        max: 20.0,
                        divisions: 20,
                        label: slid.toStringAsFixed(0),
                   onChanged: (double? valuee){
                        setState(() {
                          slid=valuee!;
                        });
                   }),
                    ],
                  ),
                ),
                
                
                Container(
                  height: 500,
              
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFFFFF8EE), // Color goes inside BoxDecoration
                borderRadius: BorderRadius.circular(12), // Rounded corners
                border: Border.all(
                  color: Color(0xFFA47148),
                  width: 2,
                ),
                 boxShadow: [ // Add a list of shadows
              BoxShadow(
                color: Color(0xFFD7CCC8),
                spreadRadius: 3,
                blurRadius: 5,
                offset: const Offset(0, 3), // controls shadow position
              ),
            ],
            ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TextField(
                          controller: namectr,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            errorText: nameerror,
                            hintText: 'Pet Breed name',
                          ),
                          onChanged: (value) {
                            setState(() {
                              nameerror=nameval(value);
                            });
                          },
                        ),
                          SizedBox(height: 20),
                                    TextField(
                    controller: nikctr,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      errorText: nikerror,
                      hintText: 'Pet nickname',
                    ),
                    onChanged: (value) {
                      setState(() {
                        nikerror=nikval(value);
                      });
                    },
                                    ),
                                    SizedBox(height: 20),
                                    TextField(
                    controller: pethctr,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      errorText: petherror,
                      hintText: 'Pet height',
                    ),
                    onChanged: (value) {
                      setState(() {
                        petherror=pethval(value);
                      });
                    },
                                    ),
                                    SizedBox(height: 20),
                                    TextField(
                    controller: petwctr,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      errorText: petwerror,
                      hintText: 'Pet weight',
                    ),
                    onChanged: (value) {
                      setState(() {
                        petwerror=petwval(value);
                      });
                    }
                                    ),
                                    
                                    SizedBox(height: 20),
                                    TextField(
                    controller: addctr,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      errorText: adderror,
                      hintText: 'Owner name,Address,phone number',
                    ),
                    onChanged: (value) {
                      setState(() {
                        adderror=addval(value);
                      });
                    }
                                    ),
                                    SizedBox(height: 20),
                                    TextField(
                    controller: stryctr,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      errorText: stryerror,
                      hintText: 'Pet Story',
                    ),
                    onChanged: (value) {
                      setState(() {
                        stryerror=stryval(value);
                      });
                    },
                                    ),
                                    SizedBox(height: 20),
                                    TextField(
                    controller: pricctr,
                    keyboardType: TextInputType.numberWithOptions(),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      errorText: pricerror,
                      hintText: 'Pricing',
                    ),
                    onChanged: (value) {
                      setState(() {
                        pricerror=pricval(value);
                      });
                    },
                                    )
                      ],
                    ),
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
                    setState(() {
                      nameerror=nameval(namectr.text);
                      nikerror=nikval(nikctr.text);
                      petherror=pethval(pethctr.text);
                      petwerror=petwval(petwctr.text);
                      adderror=addval(addctr.text);
                      stryerror=stryval(stryctr.text);
                      pricerror=pricval(pricctr.text);
                      if (nameerror==null&&nikerror==null&&petherror==null&&petwerror==null&&adderror==null&&stryerror==null&&pricerror==null){
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('you can post')));
                        Navigator.push(context,MaterialPageRoute(builder: (context) => Post(name:namectr.text,nik:nikctr.text,peth:pethctr.text,petw:petwctr.text,add:addctr.text,stry:stryctr.text,price:pricctr.text,category: _con,age: slid,gender: _selecetedval == 1 ? 'Male' : 'Female',vaccinated: ischeckedd,certificate: ischecked,),),);}
                      else{
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('error')));
                      }
                    });
                    
                  },
                  child: Text('Next'),
                ),
              ],
            ),
          ],
        ), 
        )
      ),
    );
  }
}

