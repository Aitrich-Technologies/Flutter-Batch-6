import 'package:flutter/material.dart';

class MyForm10 extends StatefulWidget {
  @override
  _MyForm10State createState() => _MyForm10State();
}

class _MyForm10State extends State<MyForm10> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  bool _agreedToTerms = false;
  String? usernameError;
  String? EmailError;

  String? ValidateUserName(String username){
    if(RegExp(r'[!@#<>?":[\]\\|=+)(*&^%0_9]').hasMatch(username)){
      return "Invalid Username";
    }
    if(username.isEmpty){
      return "Username cannot be empty";
    }
    return null;
  }
  String? ValidateEmailId(String email){
    if(!RegExp(r'[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$').hasMatch(email)){
      return "Please enter valid email id";
    }
    return null;
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                  errorText: usernameError,
                ),
                onChanged: (value){
                  setState(() {
                    usernameError=ValidateUserName(value);
                  });
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  errorText: EmailError,
                ),
                onChanged: (value){
                  setState(() {
                    EmailError=ValidateEmailId(value);
                  });
                },
              ),
              SizedBox(height: 20),
              CheckboxListTile(
                title: Text('I agree to the terms and conditions'),
                value: _agreedToTerms,
                onChanged: (newValue) {
                  setState(() {
                    _agreedToTerms = newValue!;
                  });
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  String name = _nameController.text;
                  String email = _emailController.text;
                  if(name==null&&email==null){
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Form Submitted'),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Name: $name'),
                            Text('Email: $email'),
                            Text('Agreed to terms: $_agreedToTerms'),
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Close'),
                          ),
                        ],
                      );
                    },
                  );
                  }
                  else{
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please Fill them all correctly")));
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
