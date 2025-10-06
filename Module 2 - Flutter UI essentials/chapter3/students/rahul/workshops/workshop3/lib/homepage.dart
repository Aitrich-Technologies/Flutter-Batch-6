import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  Home({super.key});

  State<Home> createState() => _home();
}
class _home extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              onPressed: (){
                Navigator.push(context, 
              MaterialPageRoute(builder: (context) => DetailsScreen()));
            }, child: Text('Go to Details',style: TextStyle(color: Colors.white),),
            
            ),
            SizedBox(height: 20),
            ElevatedButton(
              
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreen()));

            }, child: Text('Go to Settings',style: TextStyle(color: Colors.white),)
            
            ),
        ],),
      ),

    );
  }
}

class DetailsScreen extends StatelessWidget {
   DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green[100],
          title: const Text('Details Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Name: John'),
            const Text('Age: 30'),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Go Back',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class SettingsScreen extends StatelessWidget {
   SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blueAccent[100],
          title: const Text('Settings Screen')),
      body: Center(
        child:
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Go Back',
                style: TextStyle(color: Colors.white),
              ),
            ),
          
        
      ),
    );
  }
}