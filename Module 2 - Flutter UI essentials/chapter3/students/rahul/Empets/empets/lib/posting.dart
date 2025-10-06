//import 'package:empets/add.dart';
import 'package:empets/homemain.dart';
//import 'package:empets/sellerhome.dart';
import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        actions: [
          Text('Edit'),
          IconButton(onPressed: (
          ){
            Navigator.pop(context);
          }, icon: Icon(Icons.edit)),
          SizedBox(width: 20)
        ],
      ),
      backgroundColor: Color(0xFFEAF6FF),
      body: SingleChildScrollView(
        child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Padding(padding: EdgeInsetsGeometry.all(20),
              child: Container(
                width: 500,
                height: 300,
                
                child:Image(image: NetworkImage('https://m.media-amazon.com/images/I/71g6nYh-x+L._UF1000,1000_QL80_.jpg'),fit: BoxFit.cover,)
              ),),
              Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                
              ],),
              ),
              Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
              child: Container(
                width: 500,
                height: 730,
                decoration: BoxDecoration(
                  color: Colors.white,
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
                ),
                ),
                child: Padding(padding: EdgeInsetsGeometry.all(35),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: [

                    Row(
                      
                      children: [
                      Text('Category : ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blueAccent),),
                      Text('Dog',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                      SizedBox(width: 80),
                      Text('Pizce : ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blueAccent),),
                      Text('20000 \u{20B9}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                      

                    ],),
                    SizedBox(height: 20),
                    Row(children: [
                      Text('Breed : ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blueAccent),),
                      Text('Golden Retriever',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                      SizedBox(width: 35),
                       Text('Age: : ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blueAccent),),
                      Text('1.5',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                      
                      

                    ],),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                      Column(
                        
                        children: [
                        Text('Pet nikname : ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blueAccent,),),
                      Text('Daisy',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                      ],),
                     
                      
                      SizedBox(width: 70),
                      Column(children: [
                        Text('Gender : ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blueAccent),),
                      Text('Female',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),), 
                      ],)


                    ],),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                      Column(children: [
                        Text('Weight : ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blueAccent),),
                      Text('11 Kg',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                      ],),
                     
                      
                      SizedBox(width: 90),
                      Column(children: [
                        Text('Height : ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blueAccent),),
                      Text('33c m',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),), 
                      ],)
                      
                    ],),
                    
SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text('Vaccined',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.blueAccent),),
                      Icon(Icons.check_box,size: 35),
                       SizedBox(width: 80),
                      Text('Certificate',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.blueAccent),),
                      Icon(Icons.check_box,size: 35),
                    ],),
                    SizedBox(height: 20),
                    Text('Owner : ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.blueAccent),),

                      Text('sarak danny',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                      Text('Trissur,kunnamkulam,',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                      Text('pin-680501',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                      Text('phno- 8943848400',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                      SizedBox(height: 20),
              Text('Pet Story :',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blueAccent),),
               Text('Daisy is a curious little explorer with a nose for adventure. She’s playful, friendly with children, and always eager to make new friends — both human and furry. Daisy’s joyful personality makes her a wonderful family pet',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                ],),
                ),
              ),
              ),
                
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 50,vertical: 23),
                  textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                  elevation: 10,
                ),
              onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=> Mainhome()));

            },
            child: Text('Post')),
            
              ],)
              
              
              
          ],),
      )
    

    );
  }
}