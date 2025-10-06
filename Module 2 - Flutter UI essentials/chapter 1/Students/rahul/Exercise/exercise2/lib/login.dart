import 'package:flutter/material.dart';

class Loginn extends StatelessWidget{
  Loginn({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      
      body: SingleChildScrollView(
      child :Padding(
      padding: EdgeInsets.symmetric(horizontal: 50), 
      
      
      child: Center(
        
        child:  Column(
          
          children: [
              Container(

              width: 500,
              height: 200,
              
              child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrjnzQcjLVvEQqOzcRCj8cHBwz-etEyYrcrQ6K73zfAYSOr9UxvXoELPQuN92JRw0wA3k&usqp=CAU'),
              
            ),
            SizedBox(height: 10),
            Container(
              width: 400,
              height: 40,

              child: Text(
                'Create Your Account',
                style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.black,
                ),
              ), 
            ),
           
            SizedBox(height: 10),

           Text(
            'create an account so you can manage your personal finances.',
            style: TextStyle(color: Colors.grey,fontSize: 20,fontStyle: FontStyle.italic
            ),
          ),
          
          
          SizedBox(height: 20),
           
            TextField(
            
            decoration: InputDecoration(
              
              labelText: 'Enter Your Name',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),

          SizedBox(height: 20),

           TextField(
            
            decoration: InputDecoration(
            
              labelText: 'Enter Number',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),          
              ),
            ),
          ),

          SizedBox(height: 20),

            TextField(
                
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Enter Password',
                  suffixIcon: Icon(Icons.visibility_off),
                  
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8)
                    
                    ),
                    
                    
                  ),
                  
                ),

          SizedBox(height: 20),
           
         ElevatedButton(onPressed: (){
              print('sign up');
            }, 
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              )
            ),

            

            child: Text('Sign up',
            style: TextStyle(color: Colors.white),),
            ),
           
          SizedBox(height: 20),

           Text(
            'Sign Up With ',),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,  
              children: [
                
                IconButton(onPressed: (){
                      print('facebook login');
                },
                icon: Icon(Icons.facebook,size: 40,)),
                IconButton(onPressed: (){
                      print('google Login');
                },
                 icon: Icon(Icons.g_mobiledata,size: 50)),
                 IconButton(onPressed: (){
                      print('apple login');
                 }, icon: Icon(Icons.apple,size: 40,),)
              ],
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an Account?'),
                TextButton(onPressed: (){
                  print('login page navigation');
                }, 
                child: Text('Login')),
              ],
            )
          ],
        ),
      ), 
      ),
      ),
    );
  }
}