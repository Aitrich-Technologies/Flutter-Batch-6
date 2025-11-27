import 'package:flutter/material.dart';

class SignUp extends StatelessWidget{
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //SizedBox(height: 5),
          Image.network("https://static.vecteezy.com/system/resources/thumbnails/003/689/228/small_2x/online-registration-or-sign-up-login-for-account-on-smartphone-app-user-interface-with-secure-password-mobile-application-for-ui-web-banner-access-cartoon-people-illustration-vector.jpg"),
          //SizedBox(height:20),
          ListTile(
            title: Text("Create Your Account",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold)),
            subtitle: Text("Create an account so you can manage your personal finances.",style: TextStyle(fontSize: 20)),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Enter Your Name",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          //SizedBox(height: 5),
          Padding(
            padding: EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Enter Number",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          //SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Enter Password",
                suffixIcon: Icon(Icons.visibility_off),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(onPressed: (){},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.symmetric(horizontal: 165,vertical: 15)
          ),
          child: Text("Signup",style: TextStyle(color: Colors.black,fontSize: 15))),
          SizedBox(height: 20),
          Text("Sign Up with",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.facebook,size: 35),
              SizedBox(width: 20),
              Icon(Icons.g_mobiledata,size: 40),
              SizedBox(width: 20),
              Icon(Icons.apple_outlined,size: 42),
            ],
          ),
          SizedBox(height: 20),
          Text("Already have an account?  Login",style: TextStyle(color: Colors.black,fontSize: 15))
        ],
      ),
    );
  }
}