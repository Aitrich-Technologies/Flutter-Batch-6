import 'package:exercise_4/signup.dart';
import 'package:flutter/material.dart';

class bearsignup extends StatefulWidget {
  const bearsignup({super.key});
  @override
  State<bearsignup> createState() => _bearsignupState();
}
class _bearsignupState extends State<bearsignup> {
  final TextEditingController logctr=TextEditingController();
  String? logerror;
  String? emailval(String email){
    if(!RegExp(r'[a-zA-Z0-9.%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$').hasMatch(email)){
      return 'Email id should be specific & must contain @ character';
    }
    if(email.isEmpty){
      return 'email cannot be empty';
    }
    return null;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
      ),
      body: Padding(padding: EdgeInsetsGeometry.all(10),
        child: Column(
          children: [
            Container(
              width: 500,
              height: 250,
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2_GJGpHPougot5YyutIdN9E9sT6oxpAYH6Q&s"),
            ),
            TextField(
              decoration: InputDecoration(
                errorText:logerror,
                prefixIcon: Icon(Icons.mail),
                hintText: 'Login with Email',
                filled: true,
                fillColor: Colors.blue,  
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
              onChanged: (value) {
                setState(() {
                  logerror=emailval(value);
                });
              },
            ),
            SizedBox(height: 30,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                overlayColor: Colors.blue,
                padding: EdgeInsets.symmetric(vertical: 23),
                backgroundColor: Colors.greenAccent
              ),
              onPressed: (){}, 
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.facebook,color: Colors.blueAccent,),
                  SizedBox(width: 20,),
                  Text('Login with Facebook')
                ],
              )
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Did not have an account?"),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>signup()));
                }, 
                child: Text("SignUp"))
              ],
            ),
            SizedBox(height: 50,),
            Text('By continue you agree to our'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Terms",style: TextStyle(color: Colors.blue),),
                Text(" & "),
                Text("Privacy Policy",style: TextStyle(color: Colors.blue),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}