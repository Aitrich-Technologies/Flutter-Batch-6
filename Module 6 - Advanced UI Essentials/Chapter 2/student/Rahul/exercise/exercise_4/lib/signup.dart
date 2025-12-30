import 'package:flutter/material.dart';
class signup extends StatefulWidget {
  const signup({super.key});
  @override
  State<signup> createState() => _signupState();
}
class _signupState extends State<signup> {
  final TextEditingController namectr=TextEditingController();
  final TextEditingController emailctr=TextEditingController();
  final TextEditingController pwctr=TextEditingController();
  String?nameerror;
  String?emailerror;
  String?pwerror;
  String? namevar(String name){
    if(RegExp(r'[!@#<>?":_~;[\]\\|=+)(*&^%0-9-)]').hasMatch(name)){
      return'Username must not contain special characters or number';
    }
    if(name.isEmpty){
      return 'username cannot be empty';
    }
    return null;
  } 
  String? emailval(String email){
    if(!RegExp(r'[a-zA-Z0-9.%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$').hasMatch(email)){
      return 'Email id should be specific & must contain @ character';
    }
    if(email.isEmpty){
      return 'email cannot be empty';
    }
    return null;
  }
  String? pwval(String pw){
    if(pw.isEmpty){
      return 'password required';
    }
    if (pw.length <6){
      return'Password must be at least 6 characters long';
    }
    return null;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup',style: TextStyle(color: Colors.white),),
        backgroundColor: const Color.fromARGB(255, 157, 131, 122),
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
              controller:namectr,
              decoration: InputDecoration(
                errorText: nameerror,
                labelText: 'name',
                filled: true,
                fillColor: const Color.fromARGB(255, 255, 159, 191),  
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
              onChanged: (value) {
                setState(() {
                  nameerror=namevar(value);
                });
              },
            ),
            SizedBox(height: 10,),
            TextField(
              controller: emailctr,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.mail),
                errorText: emailerror,
                labelText: 'Email',
                filled: true,
                fillColor: const Color.fromARGB(255, 174, 215, 249),  
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
              onChanged: (value) {
                setState(() {
                  emailerror=emailval(value);
                });
              },
            ),
            SizedBox(height: 10,),
            TextField(
              controller: pwctr,
              decoration: InputDecoration(
                errorText: pwerror,
                suffixIcon: Icon(Icons.remove_red_eye),
                labelText: 'Password',
                filled: true,
                fillColor: const Color.fromARGB(255, 126, 246, 166),  
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
              onChanged: (value) {
                setState(() {
                  pwerror=pwval(value);
                });
              },
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 23),
                backgroundColor: const Color.fromARGB(255, 156, 105, 105)
              ),
              onPressed: (){
                setState(() {
                  nameerror=namevar(namectr.text);
                  emailerror=emailval(emailctr.text);
                  pwerror=pwval(pwctr.text);
                });
                if(nameerror==null&&emailerror==null&&pwerror==null){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Login Successfully')));
                }
                else{
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Please fill in all fields')));
                }
              }, 
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Login with Email',style: TextStyle(color: Colors.white),),
                ],
              )
            ),

            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Forgot Password?"),
                TextButton(onPressed: (){}, 
                child: Text("Click here"))
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.facebook,color: Colors.redAccent,)),
                IconButton(onPressed: (){}, icon: Icon(Icons.settings,color: Colors.lightBlueAccent,)),
                IconButton(onPressed: (){}, icon: Icon(Icons.mail,color: Colors.greenAccent,)),
              ],
            )
            
          ],
        ),
      ),
    );
  }
}