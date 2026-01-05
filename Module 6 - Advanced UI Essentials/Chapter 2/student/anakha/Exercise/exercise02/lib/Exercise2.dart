import 'package:flutter/material.dart';

class Exercise2 extends StatefulWidget {
  const Exercise2({super.key});

  @override
  State<Exercise2> createState() => _Exercise2State();
}

class _Exercise2State extends State<Exercise2> {
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
  