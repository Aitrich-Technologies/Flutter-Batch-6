import 'package:flutter/material.dart';

class Buyers19 extends StatefulWidget {
  const Buyers19({Key? key}) : super(key: key);

  @override
  State<Buyers19> createState() => _Buyers19State();
}

class _Buyers19State extends State<Buyers19> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Set<String> likedItems = {};

  void toggleLike(String item) {
    setState(() {
      if (likedItems.contains(item)) {
        likedItems.remove(item);
      } else {
        likedItems.add(item);
      }
    });
  }

  String? selectedValue3;

  //final List<String> items3 = ['breed1', 'breed2', 'breed3', 'breed4'];
  bool isChecked2 = false;
  bool isCheckedvac = false;
  bool isCheckedcer = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Cat'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              _scaffoldKey.currentState!.openEndDrawer();
            },
            icon: const Icon(Icons.filter_alt_sharp),
          ),
          
          IconButton(onPressed: () {}, icon: const Icon(Icons.search_rounded)
          ),
        ],
      ),
     // Create enddrawer here
     endDrawer: Drawer(
      child: Padding(padding: EdgeInsetsGeometry.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          Text('Filter & Sort'),

        //dropdown
          
            Row(
              children: [
                DropdownButton(
              hint: Text('BREEDS',style: TextStyle(fontWeight: FontWeight.bold),),
              //iconSize: 50,
              //isExpanded: true,
            value: selectedValue3,
            items: ['breed1', 'breed2', 'breed3', 'breed4']
            .map<DropdownMenuItem<String>>((String value){
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value)
                );
            }).toList(),
             onChanged:(String? valuee){
              setState(() {
                selectedValue3=valuee;
              });
             }),
              ],
            ), 
            SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Age limit',style: TextStyle(fontSize: 20),),
              
              Container(height: 50,width: 50,child: TextField(decoration: InputDecoration(border: OutlineInputBorder()),)),
              Text('To'),
              Container(
                height: 50,
                width: 50,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder()
                  ),
                ),
              ),    
            ],
          ),
          SizedBox(height: 20),
          Text('Date published'),
          Padding(padding: EdgeInsetsGeometry.all(8),
          child: TextField(
                decoration: InputDecoration(
                  hintText: 'three days ago...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                ),
              ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('Looking to Adopt',style: TextStyle(fontSize: 20)),
              Checkbox(
                value: isChecked2,
                onChanged: (bool? value){
                  setState(() {
                    isChecked2 = value ?? false;
                  });
                })


            ],),
            SizedBox(height: 20),
            Text('Price Range'),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               Container(
                height: 50,
                width: 100,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder()
                  ),
                ),
               ),

              Text('-',style: TextStyle(fontSize: 20),),
               Container(
                height: 50,
                width: 100,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder()
                  ),
                ),
               )
              ],
            ),
            SizedBox(height: 20),
            Padding(padding: EdgeInsetsGeometry.all(8),
          child: TextField(
                decoration: InputDecoration(
                  hintText: 'Location',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                ),
              ),
          ),
SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Vaccinated',style: TextStyle(fontSize: 20)),
                Checkbox(value: isCheckedvac, onChanged: (bool? valu){
                  setState(() {
                    isCheckedvac= valu?? false;
                  });
                })
            ],),
                        Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Certified',style: TextStyle(fontSize: 20),),
                Checkbox(value: isCheckedcer, onChanged: (bool? valu){
                  setState(() {
                    isCheckedcer= valu?? false;
                  });
                })
            ],),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                padding: EdgeInsets.symmetric(horizontal: 120,vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              ),
              onPressed: (){}, child: Text('Apply',style: TextStyle(color: Colors.black),)
            
            ),
        ],
      ),
      ),
     ),
      body: ListView(
        children: [
          buildListItem("Bella", "₹ 5000"),
          buildListItem("Lucy", "₹ 1500" ),    
          buildListItem("Loki", "₹ 2000"),
          buildListItem("Milo", "₹ 10000"),
          buildListItem("Leo", "₹ 6500"),
          buildListItem("Oggy", "₹ 3500"),
        ],
      ),
    );
  }

  Widget buildListItem(String name, String price) {
    bool isLiked = likedItems.contains(name);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: const Color.fromARGB(255, 232, 229, 229),
        child: ListTile(
          title: Text(name),
          subtitle: Text(price),
          trailing: IconButton(
            onPressed: () {
              toggleLike(name);
            },
            icon: Icon(
              isLiked ? Icons.favorite : Icons.favorite_border,
              color: isLiked ? Colors.red : null,
            ),
          ),
          leading: const CircleAvatar(
            backgroundColor: Colors.black,
            radius: 30,
          ),
          
        ),
      ),
    );
  }
}