import 'package:empets/cat1.dart';
import 'package:flutter/material.dart';

class Catpage extends StatefulWidget{
  Catpage({super.key});
  @override
  State<Catpage> createState() => _cat();
}
class  _cat extends State<Catpage>{
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
                  backgroundImage: AssetImage("assets/cat1.png"),
                  
                ),
                SizedBox(width: 70),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text('Ragdol',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('male',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('2000 rs',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
                ],),
                SizedBox(width: 70),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_sharp)),
                  SizedBox(height: 20),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Cat1()));
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
                  backgroundImage: AssetImage("assets/cat2.png"),
                  
                ),
                SizedBox(width: 70),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text('Persian',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('female',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('3000 rs',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
                ],),
                SizedBox(width: 70),
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
                  backgroundImage: AssetImage("assets/cat3.png"),
                  
                ),
                SizedBox(width: 50),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text('Maine coon',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('male',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('5000 rs',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
                ],),
                SizedBox(width: 55),
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
                  backgroundImage: AssetImage("assets/cat4.png"),
                  
                ),
                SizedBox(width: 60),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text('Siamese',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('male',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('4500',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
                ],),
                SizedBox(width: 70),
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
                  backgroundImage: AssetImage("assets/cat5.png"),
                  
                ),
                SizedBox(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text('abyssinian',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('female',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('2500 rs',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
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
                  backgroundImage: AssetImage("assets/cat6.png"),
                  
                ),
                SizedBox(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text('Scottish fold',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('male',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('2400 rs',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
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