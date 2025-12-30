


import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Contactu(),
    debugShowCheckedModeBanner: false,
  ));
}
class Contactu extends StatefulWidget {
  const Contactu({super.key});

  @override
  State<Contactu> createState() => _ContactusState();
}

class _ContactusState extends State<Contactu> {
  bool isDarkMode=false;
  final TextEditingController namectr=TextEditingController();
  final TextEditingController emailctr=TextEditingController();
  final TextEditingController messctr=TextEditingController();
  String? nameerror;
  String? emailerror;
  String? messerror;
  String?  nameval(String name){
    if(name.isEmpty){
      return "empty";
    }
    return null;
  }
  String? emailval(String email){
    if(email.isEmpty){
      return "empty";
    }
    if(!RegExp(r'[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$').hasMatch(email)){
      return 'Invalid emmail id';
    }
    return null;
  }
  String? messval(String mess){
    if(mess.isEmpty){
      return "empty";
    }
    return null;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isDarkMode ? ThemeData.dark():ThemeData.light(),
      home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('Contact Us'),
        leading: Icon(Icons.arrow_back),
        actions: [
          IconButton(onPressed: (){
            setState(() {
              isDarkMode=!isDarkMode;
            });
          }, icon: Icon(isDarkMode? Icons.light_mode:Icons.dark_mode))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsetsGeometry.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    controller: namectr,
                    decoration: InputDecoration(
                      errorText: nameerror,
                      hintText: 'Name',
                      hintStyle: TextStyle(color: Colors.grey)
                    ),
                    onChanged: (value) {
                      setState(() {
                        nameerror= nameval(value);
                      });
                    },
                  ),
                  SizedBox(height: 30),
                  TextField(
                    controller: emailctr,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      errorText: emailerror,
                      hintStyle: TextStyle(color: Colors.grey)
                    ),
                    onChanged: (value) {
                      setState(() {
                        emailerror=emailval(value);
                      });
                    },
                  ),
                  SizedBox(height: 30),
                  TextField(
                    controller: messctr,
                    decoration: InputDecoration(
                      errorText: messerror,
                      hintText: 'Messages',
                      hintStyle: TextStyle(color: Colors.grey)
                    ),
                    onChanged: (value) {
                      setState(() {
                        messerror=messval(value);
                      });
                    },
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 25,vertical: 20),
                      backgroundColor: Colors.black
                    ),
                    onPressed: (){
                      setState(() {
                        emailerror=emailval(emailctr.text);
                        nameerror=emailval(emailctr.text);
                        messerror=messval(messctr.text);
                      });
                      if(nameerror==null&&messerror==null&&emailerror==null){
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("submited")));
                      }
                      else{
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("error fields")));
                      }
                    },
                    child: Text("Submit")
                  ),
                    ],
                  ),
                  SizedBox(height: 30),
            
                  Text("Info",style: TextStyle(color: Colors.grey,fontSize: 20),),
            
                  SizedBox(height: 30),
            
                  Icon(Icons.email),
                  SizedBox(height: 30),
                  
                  Icon(Icons.call),
                  SizedBox(height: 30),
                  
                  Icon(Icons.business_sharp),
                  SizedBox(height: 30),
            
                ],
              ),
            ),
          
          ],
        ),
      ),
    ),
    );
  }
}