import 'package:empets/report.dart';
import 'package:flutter/material.dart';

class Dogg extends StatefulWidget {
  const Dogg({super.key});

  @override
  State<Dogg> createState() => _DoggState();
}

class _DoggState extends State<Dogg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Text('Report'),
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Report()));
          }, icon: Icon(Icons.report)),
          SizedBox(width: 20)
        ],
      ),
      backgroundColor: Color(0xFFEAF6FF),
      body: SingleChildScrollView(
        child:  Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Padding(padding: EdgeInsetsGeometry.all(20),
              child: Container(
                width: 500,
                height: 300,
                
                child:Image(image: NetworkImage('https://m.media-amazon.com/images/I/71g6nYh-x+L._UF1000,1000_QL80_.jpg'),fit: BoxFit.cover,)
              ),),
              Container(
                width: 500,
                height: 115,
                decoration: BoxDecoration(
                  color:Colors.cyanAccent,
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
                child: Padding(padding: EdgeInsetsGeometry.all(10),
                child: Column(children: [
                  Text('only 20000 \u{20B9}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              
              Text('Breed  : Golden Retriever',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              Text('Pet nikname : Daisy',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                ],),
                ),
              ),
               SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

Container(
                width: 245,
                height: 150,
                decoration: BoxDecoration(
                  color:  Colors.cyanAccent,
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
                child: Padding(padding: EdgeInsetsGeometry.all(10),
                child: Column(children: [
                  Text('Age: 1.5',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  
              
              Text('Vaccine:yes',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              Text('Certificate:yes',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              Text('Gender : Female',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              
                ],),
                ),
              ),

              SizedBox(width: 10),
              Container(
                width: 245,
                height: 150,
                decoration: BoxDecoration(
                  color:  Colors.cyanAccent,
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
                child: Padding(padding: EdgeInsetsGeometry.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text('Owner details',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,),),
                  Text('Lionel Messi',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  Text('kunnamkulam',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  Text('mob:+918943848400',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                ],),
                ),
              ),

              ],),
               SizedBox(height: 20),
              Container( 
                width: 500,
                height: 50,
                decoration: BoxDecoration(
                  color:  Colors.cyanAccent,
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
                child: Padding(padding: EdgeInsetsGeometry.all(10),
                child: Column(children: [
                  Text(' Weight   -   11kg                Height   -   33 cm',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
               
                ],)),
              ),
              SizedBox(height: 20),
              
              Container( 
                width: 500,
                height: 140,
                decoration: BoxDecoration(
                  color:  Colors.cyanAccent,
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
                child: Padding(padding: EdgeInsetsGeometry.all(10),
                child: Column(children: [
                  Text('Pet Story :',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,),),
               Text('Daisy is a curious little explorer with a nose for adventure. She’s playful, friendly with children, and always eager to make new friends — both human and furry. Daisy’s joyful personality makes her a wonderful family pet',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                ],)),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 70,vertical: 22),
                  textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                  elevation: 10,
                ),
              onPressed: (){
              

            },
            child: Text('call')),
            SizedBox(width: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 40,vertical: 25),
                  textStyle: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),
                  elevation: 10,
                ),
              onPressed: (){
              

            },
            child: Text('Purchase Request')),
              ],)
              
              
              
          ],),
      )
    );
  }
}