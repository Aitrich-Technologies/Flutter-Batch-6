import 'package:flutter/material.dart';

class MyApp88 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp88> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String? nameerror; 
  String? passworderror;

  String? nameval(String username){
    if(!RegExp(r'[A-Za-z]').hasMatch(username)){
      return "Invalid user name ..";
    }
    if(username.isEmpty){
      return "error";
    }
    return null;
  }

  String? passval (String pass){
   if(pass.length <8){
    return " invalid password at least  8 char ,alp...";
   }
   return null;
  }

  @override
  void dispose() {
    nameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _submit() {
    // Perform submission logic here
    print("Username: ${nameController.text}");
    print("Password: ${passwordController.text}");
  }

  void _clear() {
    setState(() {
      nameController.clear();
      passwordController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter TextField Example'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 80,
              ),
              SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                    errorText: nameerror,
                    hintText: 'Enter Your Name',
                  ),
                  onChanged: (value) {
                    setState(() {
                      nameerror=nameval(value);
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  obscureText: true,
                  
                  controller: passwordController,
                  decoration: InputDecoration(
                    
                    border: OutlineInputBorder(),
                  
                    labelText: 'Password',
                    errorText: passworderror,
                    hintText: 'Enter Password',
                  ),
                  onChanged: (value) {
                    setState(() {
                      passworderror=passval(value);
                    });
                  },
                ),

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: (){
                      _submit();
                      setState(() {
                        nameerror=nameval(nameController.text);
                        passworderror=passval(passwordController.text);
                      });
                      if(nameerror==null&& passworderror==null){
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Submited')));
                      }
                      else{
                        showDialog(
                      context: context, 
                      builder: (BuildContext context)=> AlertDialog(
                        title: Text('error'),
                        content: Text("pleae fill in all filds correctly"),
                        actions: [
                          TextButton(onPressed: ()=>Navigator.pop(context,'cancel'), child: Text('Cancel'))
                        ],
                      ));
                      }
                    },
                    child: Text('Submit'),
                    
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: _clear,
                    child: Text('Clear'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

