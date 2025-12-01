// ignore_for_file: library_private_types_in_public_api, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Buyerviewpages1 extends StatefulWidget {
  const Buyerviewpages1({Key? key}) : super(key: key);

  @override
  _Buyerviewpages1State createState() => _Buyerviewpages1State();
}

class _Buyerviewpages1State extends State<Buyerviewpages1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 207, 143, 59),
      body: SingleChildScrollView(
        child: Column(          
          children: [        
            Stack(              
              children: [                
            Container(
              color: Colors.black,
              height: 250,              
            ),
            const Positioned(
              top:10,
              left:10,
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size:24,
              ),
            ),
            const Positioned(
              top:10,
              right:15,
              child: Icon(
                Icons.report_gmailerrorred,
                color: Colors.red,
                size:24,               
              ),             
            ),
             const Positioned(
                  top: 32,
                  right: 10,
                  child: Text(
                    "Report", 
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 12, 
                    ),
                  ),
                ),
              ],
            ),
          
            const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text("Persian Cat",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                      ),
                      ),
                      
                      
                    
                      
                    ),
                    
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.favorite,
                      color: Colors.red,
                                  ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text("Loki",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text("Kannur,kerala",
                      style: TextStyle( 
                        fontSize: 11,
                        color: Colors.white,
                      ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                   width: 125,
                   height: 100,
                   padding: const EdgeInsets.all(10),
                   // ignore: prefer_const_constructors
                   decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                   ),
                   child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text("3 months",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                       Text("Age"),
                     ],
                   ),
                  ),
                  const SizedBox(width: 15),
                  Container(
                    width: 125,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("4.3kg",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                        Text("Weight"),
                      ],
                    ),
                  ),
                  const SizedBox(width: 15),
                  Container(
                    width: 125,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Male",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                        Text("Gender"),
                      ],
                    ),
                  )
                ],
              ),
            ),

            const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text("Vaccinated on 10/08/2022",
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
              ),
                    ),
                  ],
            ),

            // Add containers here
               
              
            
            const SizedBox(height: 10),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 80,
                    width: 340,
                     decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 226, 207, 206),
                     borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.black, 
                
            
                    
                    
                  
            
              ),
              SizedBox(width: 16), 
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        
                      "Mai",
                      
                      style: TextStyle(
                        
                        fontSize: 18,
                      ),
                    ), 
                  ),
                
                ],
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  "Posted one day ago...", 
                  style: TextStyle(
                    fontSize: 12, color: Colors.grey
                  ),
                ),),
            ],
          ),
          
          
                  ),
                  
                ],
              ),
            ),
            const SizedBox(height: 20),
            
           const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text("Pet Story",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                      
                      
                    ),
                  ],
                ),
              ]
                      
                    ),
            const SizedBox(height: 6),
            
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'This little sweetie is a 3 month old male cat. He has been at the shelter since he was born, and we would really love to see him get into a new home soon!',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 30), 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child:
                ElevatedButton(
                  onPressed: () {
      
                    
                  },
                   style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0), 
              ),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 124, 187, 127)),  
          ),
                   child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.chat_outlined),
                  Text("CHAT"),
            ],
                ),
                ),
                ),
                const SizedBox(width: 5),
                Expanded(
                  child: 
                ElevatedButton(
                  onPressed: () {
                    
                  },
                   style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0), 
              ),
            ),
             backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 13, 49, 13)), 
          ),
                   child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.wifi_calling_3_rounded),
                  Text("CALL"),
            ],
                      ),
                ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
