import 'package:flutter/material.dart';

class Bottomm extends StatefulWidget{
  Bottomm({super.key});
  @override
  State<Bottomm> createState() => _bottom();
}
class _bottom extends State<Bottomm>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('first page'),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>Secondpage()),
             );
        }, 
        child: Text('click here')),
      ),
    );
  }
}
class Secondpage extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        title: Text('Second page'),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.pop(context);
        }, 
        child: Text('back')),
      ),
    );
  }
}