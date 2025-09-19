import 'package:flutter/material.dart';

class Instagarmlogin extends StatelessWidget{
  Instagarmlogin({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            
            
            Text('INSTAGRAM',style: TextStyle(fontSize: 40,fontStyle: FontStyle.italic,color: Colors.red,fontWeight: FontWeight.bold),),
            Padding(padding: EdgeInsets.all(80),
            child: 
            Column(children: [
              TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12)
                ),
                hintText: 'User name ,Phone number ,Email id'
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.remove_red_eye_rounded),
                
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                
                hintText: 'Password'
              ),
            ),
            SizedBox(height: 10),
            
            Text('forgotten password?',style: TextStyle(color: Colors.blue),),

            SizedBox(height: 20),

            ElevatedButton(onPressed: (){},
            style: ElevatedButton.styleFrom(
  backgroundColor: Colors.blue,
  shape: RoundedRectangleBorder(
    
    borderRadius: BorderRadius.circular(20),

  ),
  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),

),
            child: Text('Log in',style: TextStyle(color: Colors.white),)),
            SizedBox(height: 20),
            Text('or'),
            
            SizedBox(height: 20),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.facebook,color: Colors.blue),
                TextButton(onPressed: (){

                },
                child: Text('Login with facebook',style: TextStyle(color: Colors.blue),))
              ],
            ),
            
           
            ],),
            ),
          
            

          ],
        ),
        


       
      ),
    );
  }
}