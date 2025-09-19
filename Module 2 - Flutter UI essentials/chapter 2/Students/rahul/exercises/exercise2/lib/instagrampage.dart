import 'package:flutter/material.dart';

class Instapage extends StatelessWidget{
  Instapage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 226, 227, 227),
        title: Text('INSTAGRAM'),
        actions: [
          SizedBox(width: 20),
          Icon(Icons.favorite,color: Colors.red,),
          SizedBox(width: 20),
          Icon(Icons.message,),
          SizedBox(width: 20),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(18),
      child: Column(children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/lap1.jpg'),
          ),
          SizedBox(width: 15),
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/lap5.jpg'),
          ),
          SizedBox(width: 10),
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/lap4.jpg'),
          ),
          SizedBox(width: 10),
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/lap5.jpg'),
          ),
          SizedBox(width: 10),
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/lap4.jpg'),
            
          ),
          SizedBox(width: 10),
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/lap5.jpg'),
          ),
        ],),
        ),
        Row(
          children: [
            SizedBox(width: 6),
            Text('Your story'),
            SizedBox(width: 27,),
            Text("user name"),
            SizedBox(width: 26),
                        Text("user name"),
            SizedBox(width: 25),
            Text("user name"),
            SizedBox(width: 25),
            Text("user name"),
            
            
            
            
          ],
        ),
        Divider(height: 10, thickness: 1, indent: 0, endIndent: 0, color: Colors.black),
        Padding(padding: EdgeInsets.all(8),
         child:  Row(
          children: [
          CircleAvatar(
          radius: 30,
            backgroundImage: AssetImage('assets/lap3.jpg'),
          
          ),
          SizedBox(width: 20),
          Text('rahul777___dark',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
          SizedBox(width: 200),
          Icon(Icons.more_vert),
        ],)
        ),
         Container(
                    width: 600,
                    height: 300, 
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/mob.png'), 
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
        Padding(padding: EdgeInsets.all(10),
        child: Row(
          children: [
            SizedBox(width: 10),
            Icon(Icons.favorite,color: Colors.redAccent,),
            SizedBox(width: 20),
            Icon(Icons.add_comment),
            SizedBox(width: 20),
            Icon(Icons.forward)
          ],
        )),
        Row(
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 17),
            Text('600k'),
            SizedBox(width: 10),
            Text('100k'),
            SizedBox(width: 15),
            Text('200k'),
            SizedBox(width: 20),
          ],
        ),
       Padding(padding: EdgeInsets.all(15),
       child: Row(
        children: [
          
          
            Text('New Iphone'),
            Icon(Icons.emoji_emotions),
            SizedBox(width: 20),
            Text('#iphone #new #smartphone #brand',style: TextStyle(color: Colors.blue),),
          
        
        ],
       ),),
          
           
        
        

      ],),
      
      ),
      
      ),
    );
  }
}