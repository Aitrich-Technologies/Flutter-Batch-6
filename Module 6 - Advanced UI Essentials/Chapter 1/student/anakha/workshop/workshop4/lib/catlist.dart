import 'package:flutter/material.dart';

class Catlist extends StatefulWidget {
  const Catlist({super.key});

  @override
  State<Catlist> createState() => _CatlistState();
}

class _CatlistState extends State<Catlist> {
  final List<Map<String, dynamic>> cats = [
    {"name": "Bella", "price": 5000, "liked": true},
    {"name": "Lucy", "price": 1000, "liked": false},
    {"name": "Loki", "price": 2000, "liked": true},
    {"name": "Milo", "price": 10000, "liked": false},
    {"name": "Leo", "price": 6500, "liked": true},
    {"name": "Oggy", "price": 3500, "liked": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF7F7),
       appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Cat"),
        centerTitle: true,
        actions: [
         Builder(
          builder: (context) {
            return IconButton(
             icon: const Icon(Icons.filter_list),
             onPressed: () {
             Scaffold.of(context).openEndDrawer();
            },
          );
        },
      ),
      IconButton(
      icon: const Icon(Icons.search),
      onPressed: () {},
      ),
      ], 
      ),
      endDrawer: const Filter(),
      body: ListView.builder(
        itemCount: cats.length,
        itemBuilder: (context, index) {
          return Card(
            name: cats[index]["name"],
            price: cats[index]["price"],
            liked: cats[index]["liked"],
          );
        },
      ),
    );
  }
}
class Card extends StatelessWidget {
   final String name;
  final int price;
  final bool liked;

  const Card({
    super.key,
    required this.name,
    required this.price,
    required this.liked,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFFE6E1E1),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            const CircleAvatar(
              radius: 28,
              backgroundColor: Colors.black,
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(
                  name,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text("₹ $price"),
              ],
            ),
            const Spacer(),
            Icon(
              liked ? Icons.favorite : Icons.favorite_border,
              color: liked ? Colors.red : Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  bool adopt = false;
  bool vaccinated = false;
  bool certified = false;

  InputDecoration box(String hint) {
    return InputDecoration(
      hintText: hint,
      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
     return Drawer(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                "Filter & Sort",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 20),
            const Text("BREED"),
            const SizedBox(height: 8),
            const TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.arrow_drop_down),
                border: UnderlineInputBorder(),
              ),
            ),
             const SizedBox(height: 24),
            const Text("Age limit"),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(child: TextField(decoration: box(""))),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text("TO"),
                ),
                Expanded(child: TextField(decoration: box(""))),
              ],
            ),
             const SizedBox(height: 24),

            const Text("Date Published"),
            const SizedBox(height: 8),
            TextField(
              decoration: box("Three days ago...."),
            ),

            const SizedBox(height: 24),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Looking to adopt"),
                Checkbox(
                  value: adopt,
                  onChanged: (v) => setState(() => adopt = v!),
                ),
              ],
            ),
             const SizedBox(height: 24),
            const Text("Price Range"),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(child: TextField(decoration: box(""))),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text("-"),
                ),
                Expanded(child: TextField(decoration: box(""))),
              ],
            ),

            const SizedBox(height: 24),
            TextField(
              decoration: box("Location"),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Vaccinated"),
                Checkbox(
                  value: vaccinated,
                  onChanged: (v) => setState(() => vaccinated = v!),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Certified"),
                Checkbox(
                  value: certified,
                  onChanged: (v) => setState(() => certified = v!),
                ),
              ],
              ),

            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  "Apply",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );   
  }
}