import 'package:flutter/material.dart';
class Homee extends StatefulWidget{
  Homee({super.key});
  @override
  State<Homee> createState() => __home();
}
class __home extends State<Homee>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.indigo,
              foregroundColor: Colors.black,
              padding: EdgeInsets.symmetric(horizontal: 80,vertical: 20),
              textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              elevation: 5,
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
            }, child: Text('Profile')),
          SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.black,
              padding: EdgeInsets.symmetric(horizontal: 60,vertical: 20),
              textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              elevation: 5,
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Not()));
            }, child: Text('Notification')),
        ],),
      ),
    );
  }
}
class Profile extends StatelessWidget{
  Profile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.black,
              padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
              textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              elevation: 5,
            ),
            onPressed: (){
              Navigator.pop(context);
            }, child: Text('Back to Home page')),
      ),

    );
  }
}
class Not extends StatelessWidget{
  Not({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.black,
              padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
              textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              elevation: 5,
            ),
            onPressed: (){
              Navigator.pop(context);
            }, child: Text('Back to Home page')),
      ),
    );
  }
}