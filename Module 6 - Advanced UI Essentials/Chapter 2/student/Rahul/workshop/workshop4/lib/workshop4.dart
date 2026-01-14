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

  String? nameerror;
  String? emailerror;

  String? nameval(String name){
    if(RegExp(r'[!@#$%&*)(-_=+}{;:",<.>?/\}]').hasMatch(name)){
      return "error";
    }
    if(name.isEmpty){
      return"empty";
    }
    return null;
  }
  String? emailval(String email){
    if(!RegExp(r'[a-zA-Z0-9._%+=]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$').hasMatch(email))
    {
      return 'error';
    }
    if(email.isEmpty){
      return'empty';
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
                  errorText: nameerror,
                  labelText: 'Name',
                ),
                onChanged: (value) {
                  setState(() {
                    nameerror=nameval(value);
                  });
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  errorText: emailerror,
                  labelText: 'Email',
                ),
                onChanged: (value) {
                  setState(() {
                    emailerror=emailval(value);
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
                  // Form submission logic here
                  String name = _nameController.text;
                  String email = _emailController.text;
                  // Display a dialog with the submitted data
                  if (_agreedToTerms==true && nameerror==null && emailerror==null ){
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
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('error fields')));
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
