//import 'package:empets/dog1.dart';
import 'package:empets/Edit.dart';
//import 'package:empets/add.dart';
//import 'package:empets/posting.dart';
import 'package:flutter/material.dart';

class Seller extends StatefulWidget{
  Seller({super.key});
  State<Seller> createState() => _buyer();
}
class _buyer extends  State<Seller>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: const Color(0xFFEAF6FF),

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10),
             Container(
              width: 500,
              height: 150,
             decoration: BoxDecoration(
              color: Colors.purpleAccent,
              borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 10,
                    offset: Offset(4, 4)
                  )
                ],
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                )

             ),
             child: Row(
              children: [
                SizedBox(width: 10),
                CircleAvatar(
                  radius: 65,
                  backgroundImage: AssetImage("assets/dog.png"),
                  
                ),
                SizedBox(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text('Golden Retriever',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('male',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('20000 rs',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
                ],),
                SizedBox(width: 30),
                
                  
                  SizedBox(width: 50),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Edit()));

                  }, child: Text('Edit')),
                
              ],
             ),
              
            ),
            SizedBox(height: 300),
            Column(
              mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(Icons.add),
              Text('Add new posts')
            ],)
          ],
        ),
      ),
    );
  }
}

