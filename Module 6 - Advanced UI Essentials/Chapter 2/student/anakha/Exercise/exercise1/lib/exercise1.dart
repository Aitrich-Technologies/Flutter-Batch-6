import 'package:flutter/material.dart';

class Exercise1 extends StatefulWidget {
  const Exercise1({super.key});

  @override
  State<Exercise1> createState() => _Exercise1State();
}

class _Exercise1State extends State<Exercise1> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController EmailController =TextEditingController();
  final TextEditingController PhoneController=TextEditingController();
  final TextEditingController addressController=TextEditingController();

  String?usernameError;
  String? EmailError;
  String? addressError;
  String? PhonenumberError;

  String? ValidateUsername(String username){
    if(RegExp(r'[!@#<>?":_~`;[\]\\|=+)(*&^%0-9]').hasMatch(username)){
      return "Username Must not contains special characters or numbers";
    }
    if(username.isEmpty){
      return "username cannot be empty";
    }
    return null;
  }
  String? ValidateEmailId(String email){
    if(!RegExp(r'[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$').hasMatch(email)){
      return "Please Enter a Valid Email Id";
    }
    return null;
  }
  String? ValidatePhoneNumber(String number){
    if(!RegExp(r'^\d{10}$').hasMatch(number)){
      return "please enter a valid phone number";
    }
    return null;
  }
  String? ValidateAddress(String Address){
    if(RegExp(r'[!@#<>:_~`;[\]\\|=+*^%]').hasMatch(Address)){
      return "Please enter a valid address";
    }
    return null;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Edit Account'),
        leading: Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Center(
          child:Padding(padding: EdgeInsets.all(20),
         child: Column(
            children: [
              Row(
                children: [
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 50,
              ),
              SizedBox(width: 30,),
              Text("Change/Delete Photo"),
            ],
            ),
            SizedBox(height: 30,),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Username',
                errorText: usernameError,
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  usernameError = ValidateUsername(value);
                });
              },
            ),
            SizedBox(height: 30,),
            TextField(
              controller: EmailController,
              decoration: InputDecoration(
                labelText: 'Email Id',
                errorText: EmailError,
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  EmailError = ValidateEmailId(value);
                });
              },
            ),
        
            SizedBox(height: 30,),
            TextField(
              controller: PhoneController,
              decoration: InputDecoration(
                labelText: 'Phone Number',
                errorText: PhonenumberError,
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  PhonenumberError = ValidatePhoneNumber(value);
                });
              },
            ),
        
           SizedBox(height: 30,),
           TextField(
            controller: addressController,
            maxLines: 5,
            decoration: InputDecoration(
              labelText: 'Address',
              errorText: addressError,
              border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  addressError = ValidateAddress(value);
                  });
              },
            ),
        
            SizedBox(height: 40,),
            ElevatedButton(onPressed: (){
              setState(() {
                usernameError=ValidateUsername(nameController.text);
                EmailError=ValidateEmailId(EmailController.text);
                PhonenumberError=ValidatePhoneNumber(PhoneController.text);
                addressError=ValidateAddress(addressController.text);
              });
             if(usernameError==null&&EmailError==null&&PhonenumberError==null&&addressError==null){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Submitted")));
             } 
             else{
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please fill all the fields")));
             }
            },
            child: Text("Save"))
            ],
          )
         
        ),
        ),
      )
    );
  }
}