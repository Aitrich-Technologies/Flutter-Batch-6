import 'package:flutter/material.dart';

class ThemingExample45 extends StatefulWidget {
  @override
  _ThemingExample45State createState() => _ThemingExample45State();
}

class _ThemingExample45State extends State<ThemingExample45> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dynamic Theming Example'),
          centerTitle: true,
        ),
       body: Center(
             child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 235, 220, 238),
                  radius: 50,
                ),
                SizedBox(height: 30,),
                TextField(
                   decoration: InputDecoration(
                    hintText: "Name",
                   ),
                ),
                 SizedBox(height: 30,),
                TextField(
                   decoration: InputDecoration(
                    hintText: "Phone Number",
                   ),
                ),
                 SizedBox(height: 30,),
                TextField(
                   decoration: InputDecoration(
                    hintText: "Password",
                   ),
                ),
                SizedBox(height: 30,),
                SizedBox(width: 200,
                child:  ElevatedButton(
                onPressed: () {
                  setState(() {
                    isDarkMode = !isDarkMode;
                  });
                },
                child: Text('Toggle Theme'),
              ),
                ),
              ]  
       ), ),
      ),
            );
          
        
      
    
  }
}