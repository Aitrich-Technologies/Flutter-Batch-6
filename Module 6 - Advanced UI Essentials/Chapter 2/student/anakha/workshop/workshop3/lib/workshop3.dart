import 'package:flutter/material.dart';

class MyApp88 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp88> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String? nameError;
  String? passwordError;

 String? ValidateUserName(String username){
  if(RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9_]').hasMatch(username)){
    return "Invalid Username(4-12 character,alphanumeric....)";
  }
  if(username.isEmpty){
    return "Username cannot be empty";
  }
  return null;
 }
  String? ValidatePassword(String Password){
    if(Password.length<8){
      return"Invalid Password(at least 8 characters,alphanumeric ....)";
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
              SizedBox(height: 80),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                    hintText: 'Enter Your Name',
                    errorText: nameError,
                  ),
                  onChanged: (value){
                    setState(() {
                      nameError = ValidateUserName(value);
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter Password',
                    errorText: passwordError,
                  ),
                  onChanged: (value) {
                    setState(() {
                      passwordError=ValidatePassword(value);
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
                      if(nameError==null&& passwordError==null){
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Submitted")));

                      }
                      else{
                        showDialog(context: context, 
                        builder:(BuildContext content)=>AlertDialog(
                          title: Text('Error'),
                          content: Text("Please fill in all fields correctly"),
                          actions: [
                            TextButton(onPressed: (){
                              Navigator.pop(context,);
                            }, child: Text("Cancel"))
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

