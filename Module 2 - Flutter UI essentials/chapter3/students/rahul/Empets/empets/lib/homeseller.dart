//import 'package:empets/dog1.dart';
import 'package:empets/Edit.dart';
//import 'package:empets/add.dart';
//import 'package:empets/posting.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class Seller extends StatefulWidget{
  Seller({super.key});
  State<Seller> createState() => _buyer();
}
class _buyer extends  State<Seller>{
  bool isLoad=true;
  @override
  void initState(){
    super.initState();

    Future.delayed(Duration(seconds: 5),(){
      setState(() {
        isLoad=false;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: const Color(0xFFEAF6FF),

      body: Skeletonizer(
        enabled: isLoad,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 10),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 5),
                   child: Container(
                    width: 400,
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
                      SizedBox(width: 5),
                      CircleAvatar(
                        radius: 55,
                        backgroundImage: AssetImage("assets/dog.png"),
                        
                      ),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Text('Golden Retriever',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                        Text('male',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                        Text('20000 rs',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                        ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Edit()));
                           
                        }, child: Text('Edit')),
                      ],),
                      
                      
                    ],
                   ),
                    
                                 ),
                 ),
                SizedBox(height: 170),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center, children: [
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Edit()));
                  }, icon: Icon(Icons.add,size: 50,)),
                  Text('Add new posts')
                ],)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

