

import 'package:empets/dog1.dart';
import 'package:flutter/material.dart';

class Dogpage extends StatefulWidget{
  Dogpage({super.key});
  @override
  State<Dogpage> createState() => _cat();
}
class  _cat extends State<Dogpage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAF6FF),
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),

            Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 70),
          child: TextField(
            
              decoration: InputDecoration(
                suffixIcon: IconButton(onPressed: (){  
                }, icon: Icon(Icons.search)),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                hint: Text('Find your favorite breed…'),
              ), 
            ),),
            SizedBox(height: 30),

           Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 30),
           child: Column(
            children: [

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
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_sharp)),
                  SizedBox(height: 20),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Dogg()));

                  }, child: Text('View')),
                ],)
              ],
             ),
              
            ),
            SizedBox(height: 20),

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
                  backgroundImage: AssetImage("assets/Beagle.jpg"),
                  
                ),
                SizedBox(width: 60),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text('Beagle',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('female',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('30000 rs',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
                ],),
                SizedBox(width: 60),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_sharp)),
                  SizedBox(height: 20),
                  ElevatedButton(onPressed: (){

                  }, child: Text('View')),
                ],)
              ],
             ),
              
            ),
            SizedBox(height: 20),

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
                  backgroundImage: AssetImage("assets/Vizsla.jpg"),
                  
                ),
                SizedBox(width: 60),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text('Vizsla',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('male',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('50000 rs',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
                ],),
                SizedBox(width: 60),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_sharp)),
                  SizedBox(height: 20),
                  ElevatedButton(onPressed: (){

                  }, child: Text('View')),
                ],)
              ],
             ),
              
            ),
            SizedBox(height: 20),

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
                  backgroundImage: AssetImage("assets/Husky.jpg"),
                  
                ),
                SizedBox(width: 30),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text('Siberian Husky',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('male',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('45000',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
                ],),
                SizedBox(width: 35),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_sharp)),
                  SizedBox(height: 20),
                  ElevatedButton(onPressed: (){

                  }, child: Text('View')),
                ],)
              ],
             ),
              
            ),
            SizedBox(height: 20),

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
                  backgroundImage: AssetImage("assets/German Shepherd.jpg"),
                  
                ),
                SizedBox(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text('German Shepherd',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('female',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('25000 rs',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
                ],),
                SizedBox(width: 30),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_sharp)),
                  SizedBox(height: 20),
                  ElevatedButton(onPressed: (){

                  }, child: Text('View')),
                ],)
              ],
             ),
              
            ),
            SizedBox(height: 20),

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
                  backgroundImage: AssetImage("assets/Rottweiler.jpg"),
                  
                ),
                SizedBox(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text('Rottweiler',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('male',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('24000 rs',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
                ],),
                SizedBox(width: 30),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_sharp)),
                  SizedBox(height: 20),
                  ElevatedButton(onPressed: (){

                  }, child: Text('View')),
                ],)
              ],
             ),
              
            ),

            ],
           ),
           )
          ],
        ),
      ),
    );
    
  }
}