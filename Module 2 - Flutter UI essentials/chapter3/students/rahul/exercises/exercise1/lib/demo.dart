import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Fication(),
    debugShowCheckedModeBanner: false,
  ));
}

class Fication extends StatefulWidget {
  const Fication({super.key});

  @override
  State<Fication> createState() => _FicationState();
}

class _FicationState extends State<Fication> {
  // List of notifications
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
