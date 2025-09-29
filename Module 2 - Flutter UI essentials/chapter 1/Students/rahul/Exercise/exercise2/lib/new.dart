import 'package:flutter/material.dart';

class Loginnn extends StatelessWidget {
  Loginnn({super.key});

  // Functions for buttons
  void _signUp() {
    print("Sign Up button pressed!");
  }

  void _login() {
    print("Navigate to Login screen!");
  }

  void _signUpWithFacebook() {
    print("Sign up with Facebook!");
  }

  void _signUpWithGoogle() {
    print("Sign up with Google!");
  }

  void _signUpWithApple() {
    print("Sign up with Apple!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Background with gradient
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade200, Colors.blue.shade900],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child: Center(
              child: Column(
                children: [
                  // Logo
                  Container(
                    width: 150,
                    height: 150,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(75),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrjnzQcjLVvEQqOzcRCj8cHBwz-etEyYrcrQ6K73zfAYSOr9UxvXoELPQuN92JRw0wA3k&usqp=CAU',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  // Title
                  Text(
                    'Create Your Account',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    'Manage your personal finances easily and securely.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                    ),
                  ),

                  SizedBox(height: 30),

                  // Name
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      labelText: 'Enter Your Name',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  // Number
                  TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone),
                      labelText: 'Enter Number',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  // Password
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: 'Enter Password',
                      suffixIcon: Icon(Icons.visibility_off),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),

                  SizedBox(height: 30),

                  // Sign Up button
                  ElevatedButton(
                    onPressed: _signUp,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      padding:
                          EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      elevation: 5,
                    ),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  SizedBox(height: 25),

                  Text(
                    'Or sign up with',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),

                  SizedBox(height: 15),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: _signUpWithFacebook,
                        icon: Icon(Icons.facebook, size: 40, color: Colors.white),
                      ),
                      IconButton(
                        onPressed: _signUpWithGoogle,
                        icon: Icon(Icons.g_mobiledata,
                            size: 50, color: Colors.white),
                      ),
                      IconButton(
                        onPressed: _signUpWithApple,
                        icon: Icon(Icons.apple, size: 40, color: Colors.white),
                      ),
                    ],
                  ),

                  SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account? ',
                        style: TextStyle(color: Colors.white70),
                      ),
                      TextButton(
                        onPressed: _login,
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.yellowAccent,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
