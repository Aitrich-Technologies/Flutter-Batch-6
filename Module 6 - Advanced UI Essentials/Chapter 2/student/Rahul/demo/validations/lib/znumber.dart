import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Number(),
  ));
}

class Number extends StatefulWidget {
  const Number({super.key});

  @override
  State<Number> createState() => _NumberState();
}

class _NumberState extends State<Number> {
final TextEditingController phoneNumberController =TextEditingController();
 String? phoneNumberError;
 String? validatephoneNumber(String phonenumber){
  if (!RegExp(r'^\d{10}$').hasMatch(phonenumber)){
    return'Phone number must be exactly 10 digits';
  }
  return null;
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login - Number"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: 
      Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
          child: TextField(
            maxLength: 10,
            keyboardType: TextInputType.number,
            controller: phoneNumberController,
            decoration: InputDecoration(
              errorText: phoneNumberError,
              
              labelText: "Enter Mobile number",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              )
            ),
            onChanged: (value) {
              setState(() {
                phoneNumberError=validatephoneNumber(value);
              });
            },
          ),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: (){
              setState(() {
                phoneNumberError=validatephoneNumber(phoneNumberController.text);
              });
              if(phoneNumberError== null){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('successful!')));
              }
            },
            child: Text('Submit')
          ),
        ],
      ),
      ),
    );
  }
}