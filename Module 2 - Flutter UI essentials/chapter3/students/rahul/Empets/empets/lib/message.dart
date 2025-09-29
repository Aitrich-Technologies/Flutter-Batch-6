import 'package:flutter/material.dart';

class Mess extends StatefulWidget{
  Mess({super.key});
  State<Mess> createState() => _mas();
}
class _mas extends State<Mess>{
  
    List<String> notifications = [
    "Notification",
    "Notification",
    "Notification",
    "Notification",
    "Notification",
    "Notification",
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification'),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                leading: const Icon(Icons.people_sharp),
                title: Text(
                  notifications[index],
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.delete, color: Colors.red),
                  onPressed: () {
                    setState(() {
                      notifications.removeAt(index); 
                    });
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
