import 'package:bottom/serpro.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget{
  Search({super.key});
  @override
  State<Search> createState() => _Search();
}
class _Search extends State<Search>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child:  Center(
        child: Column(children: [

          Text('Search',style: TextStyle(fontSize: 40,color: Colors.blueGrey),),
          Padding(padding: EdgeInsetsGeometry.all(20),
          child: TextField(
              
              decoration: InputDecoration(
                suffixIcon: IconButton(onPressed: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Proff()));
                }, icon: Icon(Icons.search)),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                
              ),
              
              
            ),),

            Padding(padding: EdgeInsetsGeometry.all(20),
            child: Container(
              width: 500,
              height: 800,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/z.jpg.jpg'),
                fit: BoxFit.cover
                ),
                
              ),
            ),),




        ],),
      ),
      )
      
      
    );
  }
}