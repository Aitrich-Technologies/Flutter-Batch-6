import 'package:flutter/material.dart';

class Cat1 extends StatefulWidget {
  const Cat1({super.key});

  @override
  State<Cat1> createState() => _Cat1State();
}

class _Cat1State extends State<Cat1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Text('Report'),
          IconButton(onPressed: (){}, icon: Icon(Icons.report)),
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
                
                child:Image(image: NetworkImage('https://i0.wp.com/hellosirgeorge.com/wp-content/uploads/2024/10/Sir-George-Seal-Lynx-Ragdoll.png?fit=1280%2C900&ssl=1'),fit: BoxFit.cover,)
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
                  Text('only 2000 \u{20B9}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              
              Text('Breed  : Ragdol',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              Text('Pet nikname : kitty',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
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
                  Text('Age: 1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  
              
              Text('Vaccine:yes',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              Text('Certificate:yes',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              Text('Gender : Male',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              
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
                  Text('Ronaldo',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
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
                  Text(' Weight   -   5kg                Height   -   40 cm',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
               
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
               Text('Kitty is a curious little explorer with a nose for adventure. he playful, friendly with children, and always eager to make new friends — both human and furry. kittys joyful personality makes her a wonderful family pet',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
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