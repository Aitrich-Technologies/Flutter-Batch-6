//import 'package:empets/add.dart';
import 'package:empets/homemain.dart';
//import 'package:empets/homeseller.dart';
//import 'package:empets/sellerhome.dart';
import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  final String name;
  final String nik;
  final String peth;
  final String petw;
  final String add;
  final String stry;
  final String price;
  final String category;
  final String gender;
  final double age;
  final bool vaccinated ;
  final bool certificate;

  const Post({super.key, required this.name, required this.nik,required this.peth,required this.petw,required this.add,required this.stry,required this.price,required this.category,required this.age,required this.gender,required this.vaccinated,required this.certificate,});
  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF8EE),
      appBar: AppBar(
        backgroundColor: Color(0xFFA47148),foregroundColor: Colors.white,
    elevation: 3,
        actions: [
          Text('Edit'),
          IconButton(onPressed: (
          ){
            Navigator.pop(context);
          }, icon: Icon(Icons.edit)),
          SizedBox(width: 20)
        ],
      ),
      
      body: SingleChildScrollView(
        child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Padding(padding: EdgeInsetsGeometry.all(10),
              child: Container(
                width: 500,
                height: 300,
                margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFFFFF8EE), // Color goes inside BoxDecoration
                borderRadius: BorderRadius.circular(12), // Rounded corners
                border: Border.all(
                  color: Color(0xFFA47148),
                  width: 2,
                ),
                 boxShadow: [ // Add a list of shadows
              BoxShadow(
                color: Color(0xFFD7CCC8),
                spreadRadius: 3,
                blurRadius: 5,
                offset: const Offset(0, 3), // controls shadow position
              ),
            ],
            ),
                child:Image(image: NetworkImage('https://m.media-amazon.com/images/I/71g6nYh-x+L._UF1000,1000_QL80_.jpg'),fit: BoxFit.cover,)
              ),),
              Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                
              ],),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                
                    Container(
                      height: 200,
                width: 500,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFFFFF8EE), // Color goes inside BoxDecoration
                  borderRadius: BorderRadius.circular(12), // Rounded corners
                  border: Border.all(
                    color: Color(0xFFA47148),
                    width: 2,
                  ),
                   boxShadow: [ // Add a list of shadows
                BoxShadow(
                  color: Color(0xFFD7CCC8),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: const Offset(0, 3), // controls shadow position
                ),
                            ],
                            ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text('Category : ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20, color: Color(0xFFA47148)),),
                              Text('${widget.category}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                            ],
                          ),
                          
                          SizedBox(width: 10),
                          Row(
                            children: [
                              Text('Pizce : ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xFFA47148)),),
                              Text('${widget.price}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Color(0xFF3E2723)),),
                            ],
                          ),
                          
                          SizedBox(height: 20),
                    Row(
                      children: [
                        Text('Breed : ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xFFA47148)),),
                        Text('${widget.name}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Color(0xFF3E2723)),),
                      ],
                    ),
                    
                    SizedBox(width: 35),
                    
                      Row(
                        children: [
                          Text('Pet nikname : ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xFFA47148),),),
                          Text('${widget.nik}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Color(0xFF3E2723)),),
                        ],
                      ),
                    
                        ],
                      ),
                    ),
                    
                    SizedBox(height: 20),
                    Container(

                      height: 190,
                
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFFFFF8EE), // Color goes inside BoxDecoration
                  borderRadius: BorderRadius.circular(12), // Rounded corners
                  border: Border.all(
                    color: Color(0xFFA47148),
                    width: 2,
                  ),
                   boxShadow: [ // Add a list of shadows
                BoxShadow(
                  color: Color(0xFFD7CCC8),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: const Offset(0, 3), // controls shadow position
                ),
                            ],
                            ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text('Age: : ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xFFA47148)),),
                                  Text('${widget.age}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Color(0xFF3E2723)),),
                                ],
                              ),
                               SizedBox(width: 70),
                          Column(children: [
                            Text('Gender : ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xFFA47148)),),
                          Text('${widget.gender}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Color(0xFF3E2723)),), 
                          ],),
                            ],
                          ),
                          SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                
                      Column(children: [
                        Text('Weight : ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xFFA47148)),),
                      Text('${widget.petw}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Color(0xFF3E2723)),),
                      ],),   
                      
                      Column(children: [
                        Text('Height : ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xFFA47148)),),
                      Text('${widget.peth}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Color(0xFF3E2723)),), 
                      ],)
                      
                    ],),
                        ],
                      ),
                    ),
                    
                    
                    
                   
                    
                    
                SizedBox(height: 20),
                    Container(
                      height: 110,
                
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFFFFF8EE), // Color goes inside BoxDecoration
                  borderRadius: BorderRadius.circular(12), // Rounded corners
                  border: Border.all(
                    color: Color(0xFFA47148),
                    width: 2,
                  ),
                   boxShadow: [ // Add a list of shadows
                BoxShadow(
                  color: Color(0xFFD7CCC8),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: const Offset(0, 3), // controls shadow position
                ),
                            ],
                            ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          
                            children: [
                            Text('Vaccined',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Color(0xFFA47148)),),
                            Text(
                              widget.vaccinated ? 'Yes' : 'No',
                              style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: widget.vaccinated? const Color(0xFF4CAF50) : const Color(0xFFD32F2F),   
                              ),
                            ),
                          
                             
                            
                          ],),
                          Row(
                            children: [
                              SizedBox(width: 20,),
                              Text('Certificate',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Color(0xFFA47148)),),
                              SizedBox(width: 35,),
                              Text(
                                widget.certificate ? 'Yes' : 'No',
                                style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: widget.certificate? const Color(0xFF4CAF50): const Color(0xFFD32F2F),
                                 ),
                            ),
                            ],
                          ),
                            
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 100,
                      width: 500,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFFFFF8EE), // Color goes inside BoxDecoration
                  borderRadius: BorderRadius.circular(12), // Rounded corners
                  border: Border.all(
                    color: Color(0xFFA47148),
                    width: 2,
                  ),
                   boxShadow: [ // Add a list of shadows
                BoxShadow(
                  color: Color(0xFFD7CCC8),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: const Offset(0, 3), // controls shadow position
                ),
                            ],
                            ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Text('Owner : ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Color(0xFFA47148)),),
                            Text('${widget.add}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Color(0xFF3E2723)),),
                          ],
                        ),
                      ),
                    ),
                      
                     
                      SizedBox(height: 20),
                              Container(
                                height: 100,
                                width: 500,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFFFFF8EE), // Color goes inside BoxDecoration
                  borderRadius: BorderRadius.circular(12), // Rounded corners
                  border: Border.all(
                    color: Color(0xFFA47148),
                    width: 2,
                  ),
                   boxShadow: [ // Add a list of shadows
                BoxShadow(
                  color: Color(0xFFD7CCC8),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: const Offset(0, 3), // controls shadow position
                ),
                            ],
                            ),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Text('Pet Story :',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xFFA47148)),),
                                      Text('${widget.stry}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Color(0xFF3E2723)),),
                                    ],
                                  ),
                                ),
                              ),
                               
                ],),
              ),
                
              
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
              onPressed: () {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => const Mainhome()),
  );
},

            child: Text('Post')),     
              ],)      
          ],),
      )
    );
  }
}