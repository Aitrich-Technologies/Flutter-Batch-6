//import 'package:empets/home.dart';
import 'package:empets/forgotpass.dart';
import 'package:empets/homemain.dart';
//import 'package:empets/homebuyer.dart';
import 'package:empets/signup.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget{
  Login({super.key});
  State<Login> createState() => _login();
}
class _login extends State<Login>{
  
  TextEditingController emailctr = TextEditingController();
  TextEditingController passctr = TextEditingController();
  

  bool isPasswordHidden = true;
  bool isConfirmPasswordHidden = true;

  
  String? emailerror;
  String? passerror;
  

  

  String? emailval(String email) {
    if (email.isEmpty) {
      return 'Email cannot be empty';
    }
    if (!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
        .hasMatch(email)) {
      return 'Enter a valid email';
    }
    return null;
  }

  String? passval(String pass) {
    if (pass.isEmpty) {
      return 'Password cannot be empty';
    }
    if (pass.length < 6) {
      return 'Password must be at least 6 characters';
    }
    if (!RegExp(r'[A-Z]').hasMatch(pass)) {
      return 'Password must contain one uppercase letter';
    }
    if (!RegExp(r'[0-9]').hasMatch(pass)) {
      return 'Password must contain one number';
    }
    return null;
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsetsGeometry.all(10),
        child: Column(children: [
          SizedBox(height: 5),
              Image.asset('assets/Elogo.png', width: 150, height: 100),
              SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                  textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  elevation: 10,
                ),
                onPressed: (){}, child: Text('Login')),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                  textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  elevation: 10,
                ),
                onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));
              }, child: Text('Signin'))
            ],),
      SizedBox(height: 20),
          Container(
          width: 500,
          height: 400,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 186, 207, 222),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 10,
                    offset: Offset(4, 4)
                  )
                ],
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),           
        ),
        child: Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
        child: Column(children: [
          SizedBox(height: 30),
          TextField(
                      controller: emailctr,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        errorText: emailerror,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          emailerror = emailval(value);
                        });
                      },
                    ),
                    SizedBox(height: 10),
            TextField(
                      controller: passctr,
                      obscureText: isPasswordHidden,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        errorText: passerror,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            isPasswordHidden
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          onPressed: () {
                            setState(() {
                              isPasswordHidden = !isPasswordHidden;
                            });
                          },
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          passerror = passval(value);
                        });
                      },
                    ),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Forgot()));
            }, child: Text('Forgot Password',style: TextStyle(color: Colors.blue),)),
      SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                  textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  elevation: 10,
                ),
              onPressed: (){
              setState(() {
                          
                          emailerror = emailval(emailctr.text);
                          passerror = passval(passctr.text);
                          
                        });
      
                        if (emailerror == null && passerror == null ) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Mainhome(),
                            ),
                          );
                        }
                        else{
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('error')));
                        }
            },
            child: Text('Login')),
            SizedBox(height: 10),
            Text('or'),
            SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(30)
      
              ),
              width: 250,
              height: 50,
              
              child: Row( children: [
                SizedBox(width: 20),
              Icon(Icons.g_mobiledata,size: 45,color: Colors.white,),
              Icon(Icons.facebook,size: 25,color: Colors.white,),
               SizedBox(width: 9),
               Icon(Icons.apple,size: 30,color: Colors.white,),
               SizedBox(width: 9),
              Text('Login in with ',style: TextStyle(color: Colors.white),)
              ]
              ),),
        ],),
        )
        ),
        ],)
        )
      ),
    );
  }
}