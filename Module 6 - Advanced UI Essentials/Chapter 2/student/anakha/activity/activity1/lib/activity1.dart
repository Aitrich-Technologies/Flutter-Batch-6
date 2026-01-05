import 'package:activity1/phone.dart';
import 'package:flutter/material.dart';

class Activity1 extends StatefulWidget {
  const Activity1({super.key});

  @override
  State<Activity1> createState() => _Activity1State();
}

class _Activity1State extends State<Activity1> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String? usernameError;
  String? passwordError;

  String? validateUsername(String username){
    if(RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9_]').hasMatch(username)){
      return "Username must not contains special characters or numbers";
    }
    if(username.isEmpty){
      return "Username cannot be empty";
    }
    return null;
  }

  String? ValidatePassword(String password){
    if(password.length<6){
      return "Password must be atleast 6 characters long";
    }
    if(!RegExp(r'[A-Z]').hasMatch(password)){
      return "Password must contain atleast one uppercase letter";
    }
    if(!RegExp(r'[0-9]').hasMatch(password)){
      return "Password must contain atleast one number";
    }
    return null;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0)),
              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: 'username',
                  errorText: usernameError,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  )
                ),
                onChanged: (value) {
                  setState(() {
                    usernameError=validateUsername(value);
                  });
                },
              ),
              SizedBox(height: 20.0,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0)),
                TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'password',
                  errorText: passwordError,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  )
                ),
                onChanged: (value) {
                  setState(() {
                    passwordError=ValidatePassword(value);
                  });
                },
              ),
              SizedBox(height: 20.0,),
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    usernameError=validateUsername(usernameController.text);
                    passwordError=ValidatePassword(passwordController.text);
                  });
                  if (usernameError == null && passwordError == null){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Login Successfull'))
                    );
                  }
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>
                  Phone()));
                }, child: Text('Login'))
          ],
        ),
      ),
    );
  }
}