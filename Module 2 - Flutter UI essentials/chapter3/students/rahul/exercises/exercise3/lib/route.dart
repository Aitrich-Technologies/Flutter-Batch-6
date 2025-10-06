import 'package:flutter/material.dart';
class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
        child: Padding(padding: EdgeInsetsGeometry.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ TextField(
              decoration: InputDecoration(
                hint: Text('Username'),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hint: Text('Password'),  
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            elevation: 5,
          ),
          onPressed: (){  
            Navigator.pushReplacement(
              context, MaterialPageRoute(
                builder: (context)=>Home()));
          }, 
          child: Text('Login',style: TextStyle(color: Colors.white),)),
          ],
        ),
        ),
      ),
    );
  }
}
class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        title: Text('Home'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            elevation: 5,
          ),
          onPressed: (){  
            Navigator.pushNamed(context, 'pro');
          }, 
          child: Text('Profile',style: TextStyle(
            color: Colors.white
            ),)), 
      ),
    );
}
}
class Profile extends StatelessWidget {
  const Profile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Profile'),
        centerTitle: true,
      ),
      //profile page
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            elevation: 5,),
          onPressed: (){  
            Navigator.pushNamed(context, 'sett');
          }, 
          child: Text('Settings',style: TextStyle(
            color: Colors.white
            ),)), 
            SizedBox(height: 20),
            ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            elevation: 5,
          ),
          onPressed: (){  
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Login()), (Route<dynamic> route)=>false);
          }, 
          child: Text('Logout',style: TextStyle(
            color: Colors.white
            ),)), 
             ],),
      ),
    );
  }
}
class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text('Settings'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            elevation: 5,
          ),
          onPressed: (){  
            Navigator.pop(context);
          }, 
          child: Text('Back to profile',style: TextStyle(
            color: Colors.white
            ),)), 
      ),
    );
  }
}
