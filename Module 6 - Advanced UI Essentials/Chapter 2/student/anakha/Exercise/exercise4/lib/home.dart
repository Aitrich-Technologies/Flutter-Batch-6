import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController nameCtrl = TextEditingController();
  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController passCtrl = TextEditingController();
  String? nameError;
  String? emailError;
  String? passwordError;

  String? Validateusername(String username){
    if(RegExp(r'[!@#$<>?":_`~;[\]\\|+=)(*&^%0-9_]').hasMatch(username)){
      return "Username Must not contains any special characters or numbers";
    }
    if(username.isEmpty){
      return "Username cannot be empty";
    }
    return null;
  }
  String? Validateemail(String Email){
    if(!RegExp(r'[a-zA-Z-0._9%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$').hasMatch(Email)){
      return "Invalid email id";
    }
    if(Email.isEmpty){
      return "Email id cannot be empty";
    }
    return null;
  }
  String? ValidPassword(String Password){
    if(Password.length<6){
      return "Password must be atleast 6 characters long";
    }
    if(!RegExp(r'[A-Z]').hasMatch(Password)){
      return "Password must contain atleast one uppercase letter";
    }
    if(!RegExp(r'[0-9]').hasMatch(Password)){
      return "Password must contain atleast one number";
    }
    return null;
  }
  void clearFields() {
    nameCtrl.clear();
    emailCtrl.clear();
    passCtrl.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF1F6),
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text("SignUp"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 20),
             CircleAvatar(
              radius: 60,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.pets,
                size: 70,
                color: Colors.brown.shade300,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "HAPPY BEAR",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.brown,
              ),
            ),

            const SizedBox(height: 30),
             TextField(
              controller: nameCtrl,
              decoration: InputDecoration(
                labelText: "Name",
                errorText: nameError,
                filled: true,
                fillColor: Colors.pink.shade100,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  nameError =Validateusername(value);
                });
              },
            ),

            SizedBox(height: 15),
            TextField(
              controller: emailCtrl,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: "Email",
                errorText: emailError,
                filled: true,
                fillColor: Colors.blue.shade100,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  emailError=Validateemail(value);
                });
              },
            ),
            

            SizedBox(height: 15),
            TextField(
              controller: passCtrl,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                errorText: passwordError,
                filled: true,
                fillColor: Colors.green.shade100,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  passwordError=ValidPassword(value);
                });
              },
            ),

            SizedBox(height: 25),
             SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed : (){
                  setState(() {
                    nameError=Validateusername(nameCtrl.text);
                    emailError=Validateemail(emailCtrl.text);
                    passwordError=ValidPassword(passCtrl.text);
                  });
                  if(nameError==null&&emailError==null&&passwordError==null){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login Successfull")));
                  }
                  else{
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please fill all fields correctly")));
                  }
                },
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown.shade300,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  "LOGIN WITH EMAIL",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Forgot Password?"),
                TextButton(
              onPressed: () {

              },
              
              child: const Text("Click here"),
            ),
              ],
            )
            )
            
          ],
        ),
      ),
    );
  }
}
  