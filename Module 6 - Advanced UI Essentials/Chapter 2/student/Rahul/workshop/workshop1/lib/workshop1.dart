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
      //debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dynamic Theming Example'),
        ),
       body: Center(
          // Add your circle avatar properties here
             child:      
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          
                          radius: 80,
                          //backgroundColor: Colors.deepPurple,
                        ),
                        SizedBox(height: 30,),
                    
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Name'
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Phone Number'
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Password'
                          ),
                        ),
                        SizedBox(height: 30),

                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                            isDarkMode = !isDarkMode;
                            });
                          },
                          child: Text('Toggle Theme'),
                        ),
                      ],
                    ),
                  )
            
                ),
             ),
            );
  }
}