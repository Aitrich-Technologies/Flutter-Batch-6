import 'package:flutter/material.dart';

class validation extends StatefulWidget {
  const validation({super.key});

  @override
  State<validation> createState() => _validationState();
}

class _validationState extends State<validation> {
  final TextEditingController usernameController =TextEditingController();
  final TextEditingController passwordController =TextEditingController();

  String? usernameError;
  String? passwordError;

  String? validateusername(String username){
    if(RegExp(r'[!@#<>?":_~;[\]\\|=+)(*&^%0-9-)]').hasMatch(username)){
      return'Username must not contain special characters or number';
    }
    if(username.isEmpty){
      return 'username cannot be empty';
    }
    return null;
  }

  String? validetepassword(String password){
    if (password.length <6){
      return'Password must be at least 6 characters long';
    }
    if (!RegExp(r'[A-Z]').hasMatch(password)){
      return'Password must contian at least one uppercase letter';
    }
    if (!RegExp(r'[0-9]').hasMatch(password)){
      return'Password must contain at least one number';
    }
    return null;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login page'),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
              child: TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: 'username',
                  errorText: usernameError,
                  border:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                ),
                onChanged: (value) {
                  setState(() {
                    usernameError= validateusername(value);
                  });
                },
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding:EdgeInsetsGeometry.symmetric(horizontal: 20),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'password',
                  errorText: passwordError,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                ),
                onChanged: (value) {
                  setState(() {
                    passwordError=validetepassword(value);
                  });
                },
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  usernameError=validateusername(usernameController.text);
                  passwordError=validetepassword(passwordController.text);
                });
                if(usernameError==null&& passwordError==null){
                 ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login successful!")),
                 );
                }
              },
              child: Text('Login')
            ),
          ],
        ),
      ),
    );
  }
}