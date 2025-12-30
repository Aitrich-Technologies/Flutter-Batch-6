import 'package:flutter/material.dart';
class Contactus extends StatefulWidget {
  const Contactus({super.key});
  @override
  State<Contactus> createState() => _ContactusState();
}
class _ContactusState extends State<Contactus> {
  bool isDarkMode=false;
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
                    decoration: InputDecoration(
                      hintText: 'Name',
                      hintStyle: TextStyle(color: Colors.grey)
                    ),
                    
                  ),
                  SizedBox(height: 30),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.grey)
                    ),
                  ),
                  SizedBox(height: 30),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Messages',
                      hintStyle: TextStyle(color: Colors.grey)
                    ),
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
            Container(
                    width: 2500,
                    height: 200,
                    color: Colors.black,
                  ),
          ],
        ),
      ),
    ),
    );
  }
}
// final TextEditingController namectr=TextEditingController();
//   final TextEditingController emailctr=TextEditingController();
//   final TextEditingController messctr=TextEditingController();
//   String? nameerror;
//   String? emailerror;
//   String? messerror;
//   String?  nameval(String name){
//     if(name.isEmpty){
//       return "empty";
//     }
//     return null;
//   }
//   String? emailval(String email){
//     if(email.isEmpty){
//       return "empty";
//     }
//     if(!RegExp(r'[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$').hasMatch(email)){
//       return 'Invalid emmail id';
//     }
//     return null;
//   }
//   String? messval(String mess){
//     if(mess.isEmpty){
//       return "empty";
//     }
//     return null;
//   }