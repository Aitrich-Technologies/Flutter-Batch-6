import 'package:flutter/material.dart';

class Phone extends StatefulWidget {
  const Phone({super.key});

  @override
  State<Phone> createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
  final TextEditingController phoneNumberController = TextEditingController();
  String ? phonrNumberError;
  String? validatePhoneNumber(String PhoneNumber){
    if(!RegExp(r'^\d{10}$').hasMatch(PhoneNumber)){
      return 'Phone number must be exactly 10 digits';
    }
    return null;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: phoneNumberController,
                keyboardType: TextInputType.number,
                maxLength: 10,
                decoration: InputDecoration(
                  labelText: 'Phone number',
                  errorText: phonrNumberError,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                ),
                onChanged: (value) {
                  setState(() {
                    phonrNumberError = validatePhoneNumber(value);
                  });
                },
              ),),
              ElevatedButton(onPressed: (){
                setState(() {
                  phonrNumberError=validatePhoneNumber(phoneNumberController.text);
                });
                if(phonrNumberError == null){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Submission Successful")),
                  );
                }
              }, child: Text("Submit"),)
          ],
        ),
      ),
    )
    ;
  }
}