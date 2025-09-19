import 'package:flutter/material.dart';
class Productt extends StatelessWidget{
  Productt({super.key});
  final List<String> productImages = [
    'assets/lap1.jpg',
    'assets/lap5.jpg',
    'assets/lap3.jpg',
    'assets/lap4.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: 
      SingleChildScrollView(
        padding: EdgeInsets.all(8),    
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,      
          children: [
            Padding(padding: EdgeInsetsGeometry.all(5)),
            const Text('Promotions',style: TextStyle(fontSize: 20,
                          fontWeight: FontWeight.bold,),),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [    
                  Container(
                    width: 500,
                    height: 150, 
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/mob.png'), 
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: 500,
                    height: 150,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/mobe.jpg'),
                        fit: BoxFit.cover
                      ),
                    ),
                  ),
                  Container(
                    width: 500, 
                    height: 150,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/mob.png'), 
                        fit: BoxFit.cover, 
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Text('Featured Products',style: TextStyle(
              fontSize: 20,fontWeight: FontWeight.bold),),
            GridView.builder(
              padding: EdgeInsets.all(12),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 3 /4,
                ),
                itemCount: 4, 
              itemBuilder: (context, index){
                return Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 5,
                        offset: const Offset(2, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(12),
                          ),
                          child: Image.asset(
                            productImages[index],
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Product  ${index + 1}',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      ),
                      SizedBox(height: 8),
                    ],
                  ),
                );
              },
            ),           
          ],
        ),
      ),
    );
  }
}