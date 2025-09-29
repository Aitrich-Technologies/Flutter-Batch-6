import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Homepage extends StatefulWidget{
  Homepage({super.key});
  @override
  State<Homepage> createState() => _Bottom();
}
class _Bottom extends State<Homepage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(18),
      child: Column(children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/w.jpg'),
          ),
          SizedBox(width: 15),
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/b.jpg'),
          ),
          SizedBox(width: 10),
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/t.jpg'),
          ),
          SizedBox(width: 10),
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/q.jpg'),
          ),
          SizedBox(width: 10),
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/s.jpg'),
            
          ),
          SizedBox(width: 10),
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/e.jpg'),
          ),
        ],),
        ),
        Row(
          children: [
            SizedBox(width: 6),
            Text('Your story'),
            SizedBox(width: 42,),
            Text("Tanjiro"),
            SizedBox(width: 43),
            Text("Tengen"),
            SizedBox(width: 45),
            Text("Sanemi"),
            SizedBox(width: 46),
            Text("Nezuko"),
            
            
            
            
          ],
        ),
        Divider(height: 10, thickness: 1, indent: 0, endIndent: 0, color: Colors.black),
        Padding(padding: EdgeInsets.all(8),
         child:  Row(
          children: [
          CircleAvatar(
          radius: 30,
            backgroundImage: AssetImage('assets/w.jpg'),
            
          
          ),
          SizedBox(width: 20),
          Text('Gyomei__Himejima777',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
          SizedBox(width: 140),
          Icon(Icons.more_vert),
        ],)
        ),
         Container(
                    width: 600,
                    height: 300, 
                    margin: EdgeInsets.all(10),
                   decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/aa.jpg'), 
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
          
          
            Text('Inosuke Hashibira'),
            Icon(Icons.emoji_emotions),
            SizedBox(width: 20),
            Text('#Inosuke #DemonSlayer #Demon',style: TextStyle(color: Colors.blue),),
          
        
        ],
       ),),

       Padding(padding: EdgeInsets.all(8),
         child:  Row(
          children: [
          CircleAvatar(
          radius: 30,
            backgroundImage: AssetImage('assets/a.jpg'),
          
          ),
          SizedBox(width: 20),
          Text('Tanjiro__Kamado',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
          SizedBox(width: 190),
          Icon(Icons.more_vert),
        ],)
        ),
         Container(
                    width: 600,
                    height: 300, 
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/bb.jpg'), 
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
            SizedBox(width: 25),
            Text('1M'),
            SizedBox(width: 20),
            Text('10k'),
            SizedBox(width: 15),
            Text('20k'),
            SizedBox(width: 20),
          ],
        ),
       Padding(padding: EdgeInsets.all(15),
       child: Row(
        children: [
          
          
            Text('Zenitsu Agatsuma'),
            Icon(Icons.emoji_emotions),
            SizedBox(width: 20),
            Text('#Zenitsu #DemonSlayer #Demon',style: TextStyle(color: Colors.blue),),
          
        
        ],
       ),),
          
           
        
        

      ],),
      
      ),
      
      ),
    );
  }
}