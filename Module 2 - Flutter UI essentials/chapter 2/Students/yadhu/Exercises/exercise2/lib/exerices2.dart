import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List productimages =
  [
    "https://i.dell.com/is/image/DellContent/content/dam/ss2/product-images/dell-client-products/notebooks/dell-plus/db16255/media-gallery/non-touch/laptop-dell-plus-db16255nt-ice-bl-fpr-gallery-5.psd?fmt=png-alpha&pscan=auto&scl=1&hei=804&wid=979&qlt=100,1&resMode=sharp2&size=979,804&chrss=full",
    "https://m.media-amazon.com/images/I/61zWFTCfWeL._AC_UF1000,1000_QL80_.jpg",
    "https://cdn-dynmedia-1.microsoft.com/is/image/microsoftcorp/13-laptop-platinum-right-render-fy25:VP4-1260x795?fmt=png-alpha",
    "https://5.imimg.com/data5/JL/QW/MY-2974783/computer-laptop-500x500.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        toolbarHeight: 50,
        title: Text("Home",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Promotions",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
            SizedBox(height:10),
            Image.network("https://roadsense.org.au/wp-content/uploads/2024/11/1.png"),
            SizedBox(height: 10),
            Text("Featured Products",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            GridView.builder(
              shrinkWrap: true,
              //physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                //childAspectRatio: 0.8,
                ),
                itemCount: productimages.length,
              itemBuilder: (context,index){
                return Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    //border: Border.all(color: Colors.grey),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                        //spreadRadius: 2
                      )
                    ]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Image.network(productimages[index],
                        //fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text("Product ${index + 1}",
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                  ],
                ),
              );
            })
          ],
        ),
        ),
      )
    );
  }
}
