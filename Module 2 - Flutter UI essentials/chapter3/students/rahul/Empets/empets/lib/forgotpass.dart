import 'package:empets/login.dart';
import 'package:empets/signup.dart';
import 'package:flutter/material.dart';
class Forgot extends StatefulWidget {
  const Forgot({super.key});
  @override
  State<Forgot> createState() => _ForgotState();
}
class _ForgotState extends State<Forgot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAF6FF),
      appBar: AppBar(
        title: Text('Forgot Password'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 500,
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
          child: Padding(padding: EdgeInsetsGeometry.all(40),
            child: Column(
              children: [
                Text('Enter Email Address ',style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.white, // Decoration color
    decorationThickness: 2,      
    shadows: [
      Shadow(
        offset: Offset(2, 2),    
        blurRadius: 3.0,         
        color: Colors.grey,      
      )
    ],),),
    
                SizedBox(height: 20),
                TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100)
                ),
                hint: Text('empetz123@email.com'),
              ),
            ),
            SizedBox(height: 20),
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Back to Login')),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                  textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  elevation: 10,
                ),
              onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => veri()));

            },
            child: Text('Send')),

            SizedBox(height: 25),
            Text('or'),
            SizedBox(height: 15),
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
              Text('Sign in with ',style: TextStyle(color: Colors.white),)
              ]
              ),
            ),
            SizedBox(height: 15),
            Text('Do you have an Accound ? '),
            SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 90,vertical: 20),
                  textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  elevation: 10,
                ),
              onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));

            },
            child: Text('Sign Up ')),
              ],
            ),),
        ),
      ),
    );
  }
}



/////////verifyyyyyyyyy
///
///

class veri extends StatefulWidget {
  const veri({super.key});

  @override
  State<veri> createState() => _veriState();
}

class _veriState extends State<veri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAF6FF),
      appBar: AppBar(
        title: Text('Verification'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 500,
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
          child: Padding(padding: EdgeInsetsGeometry.all(40),
            child: Column(
              children: [
                Text('Enter Verification Code. ',style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.white, // Decoration color
    decorationThickness: 2,      
    shadows: [
      Shadow(
        offset: Offset(2, 2),    
        blurRadius: 3.0,         
        color: Colors.grey,      
      )
    ],),),
    
                SizedBox(height: 20),
                TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100)
                ),
                hint: Text(' 6  digit code',style: TextStyle(color: Colors.grey),),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('if you didnt receive a code,',style: TextStyle(color: const Color.fromARGB(255, 58, 58, 58)),),
                TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Resend')),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                  textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  elevation: 10,
                ),
              onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => newpas()));

            },
            child: Text('Send')),

            SizedBox(height: 25),
            Text('or'),
            SizedBox(height: 15),
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
              Text('Sign in with ',style: TextStyle(color: Colors.white),)
              ]
              ),
            ),
            SizedBox(height: 15),
            Text('Do you have an Accound ? '),
            SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 90,vertical: 20),
                  textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  elevation: 10,
                ),
              onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));

            },
            child: Text('Sign Up ')),
              ],
            ),),
        ),
      ),
    );
  }
}

/////newww  paassss
///
///

class newpas extends StatefulWidget {
  const newpas({super.key});

  @override
  State<newpas> createState() => _newpasState();
}

class _newpasState extends State<newpas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAF6FF),
      appBar: AppBar(
        title: Text('New Password '),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 500,
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
          child: Padding(padding: EdgeInsetsGeometry.all(40),
            child: Column(
              children: [
                Text('Enter New Password ',style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.white, // Decoration color
    decorationThickness: 2,      
    shadows: [
      Shadow(
        offset: Offset(2, 2),    
        blurRadius: 3.0,         
        color: Colors.grey,      
      )
    ],),),
    SizedBox(height: 20),
                TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100)
                ),
                hint: Text('password'),
              ),
            ),
             SizedBox(height: 30),
            Text('Confirm Password ',style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.white, // Decoration color
    decorationThickness: 2,      
    shadows: [
      Shadow(
        offset: Offset(2, 2),    
        blurRadius: 3.0,         
        color: Colors.grey,      
      )
    ],),),
     SizedBox(height: 20),
                TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100)
                ),
                hint: Text('password'),
              ),
              obscureText: true,
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                  textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  elevation: 10,
                ),
              onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Login() ));

            },
            child: Text('Send')),
             SizedBox(height: 40),
             Icon(Icons.lock,size: 50,)
                
              ],
            ),),
        ),
      ),
    );
  }
}