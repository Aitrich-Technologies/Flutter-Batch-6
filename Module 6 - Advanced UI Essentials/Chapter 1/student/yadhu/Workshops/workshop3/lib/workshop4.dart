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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          const Text("Filter & Sort",style: TextStyle(color: Colors.black)),
          //const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: 20),
              DropdownButton(
                hint: const Text("BREED"),
                value: selectedValue3,
                items: ['breed1', 'breed2', 'breed3', 'breed4']
                .map<DropdownMenuItem<String>>((String value){
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value));
                }).toList(),
                onChanged: (String? newValue){
                  setState(() {
                    selectedValue3 = newValue;
                  });
                }),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: 20),
              const Text("Age Limit"),
              const SizedBox(width: 20),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(),
                ),
                child: const Center(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder()
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 30),
              const Text("TO"),
              const SizedBox(width: 30),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(),
                ),
                child: const Center(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Data Published"),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration:  InputDecoration(
                    hintText: "Three days ago.....",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    )
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: 130),
              const Text("Looking to adopt"),
              const SizedBox(width: 5),
              Checkbox(
                value: isChecked2,
                onChanged: (bool? value){
                  setState(() {
                    isChecked2 = value ?? false;
                  });
                })
            ],
          ),
          const SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Price Range"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(),
                    ),
                    child: const Center(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder()
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 30),
                  const Text("--"),
                  const SizedBox(width: 30),
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(),
                    ),
                    child: const Center(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                hintText:"Location",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5)
                )
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              const SizedBox(width: 160),
              const Text("Vaccinated"),
              const SizedBox(width: 5),
              Checkbox(
                value: isCheckedvac,
                onChanged: (bool? value){
                  setState(() {
                    isCheckedvac = value ?? false;
                  });
                })
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const SizedBox(width: 177),
              const Text("Certified"),
              const SizedBox(width: 5),
              Checkbox(
                value: isCheckedcer,
                onChanged: (bool? value){
                  setState(() {
                    isCheckedcer = value ?? false;
                  });
                })
            ],
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: (){},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(15),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 120,vertical: 25)
            ),
            child: const Text("Apply",
            style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15))),
        ],
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