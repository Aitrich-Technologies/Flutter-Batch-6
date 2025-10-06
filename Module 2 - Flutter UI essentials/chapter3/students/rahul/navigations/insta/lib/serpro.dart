import 'package:flutter/material.dart';

class Proff extends StatefulWidget{
  Proff({super.key});
  @override
  State<Proff> createState() => _prof();
}
class _prof extends State<Proff>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      
      body:SingleChildScrollView(
        child:  Center(
        child: Padding(padding: EdgeInsetsGeometry.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row(children: [
            CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage('assets/w.jpg'),
        ),
        SizedBox(width: 20),
        Container(width: 350,height: 100,
        child: Padding(padding: EdgeInsetsGeometry.all(20),
        child: Column(children: [
          Row(children: [
          SizedBox(width: 60),
          Text('31',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
          SizedBox(width: 60),
          Text('100k',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
          SizedBox(width: 60),
          Text('678',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
          SizedBox(width: 40),

        ],),
        SizedBox(height: 10),
        Row(children: [
          SizedBox(width: 49),
          Text('Posts',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
          SizedBox(width: 33),
          Text('Followers',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
          SizedBox(width: 21),
          Text('Following',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
          

        ],)
        ],)
        ),
        ),
          ],),
          SizedBox(height: 20),
          Text('Gyomei__Himejima777',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
          Text('Stone Hashira'),
          
          Text('strongest Demon Slayer'),
          Text('strongest Hashira in the anime'),
          SizedBox(height: 20),

          
          Padding(padding: EdgeInsetsGeometry.all(0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            ElevatedButton(onPressed: (){}, child: Text('Edit profile')),
            SizedBox(width: 20),
            ElevatedButton(onPressed: (){}, child: Text('share profile'))
          ],)),
          SizedBox(height: 15),

          Padding(padding: EdgeInsetsGeometry.all(10),
          child: Row(children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/q.jpg'),
          ),
          SizedBox(width: 15),
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/b.jpg'),
          ),
          SizedBox(width: 10),
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/t.jpg'),
          ),
          SizedBox(width: 10),]),),

          Padding(padding: EdgeInsetsGeometry.all(20),
            child: Container(
              width: 500,
              height: 800,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/z.jpg.jpg'),
                fit: BoxFit.cover
                ),
                
              ),
            ),),


        ],)
        
        ),
      ),
      )
    );
  }
}