import 'package:flutter/material.dart';



class Favorites2 extends StatefulWidget {
  const Favorites2({Key? key}) : super(key: key);

  @override
  State<Favorites2> createState() => _Favorites2State();
}

class _Favorites2State extends State<Favorites2> {
  bool isDarkThemeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: isDarkThemeEnabled ? ThemeData.dark() : ThemeData.light(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Favorites'),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  isDarkThemeEnabled = !isDarkThemeEnabled;
                });
              },
              icon: const Icon(Icons.toggle_off_sharp),
            ),
            GestureDetector(
              onTap: () {
              
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationPage(isDarkModeEnabled: isDarkThemeEnabled)),
                );
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Icon(Icons.notifications_sharp),
              ),
            ),
          ],
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: const Color.fromARGB(255, 232, 229, 229),
                child: ListTile(
                  title: const Text(
                    "Bella",
                    style: TextStyle(color: Colors.black), // Change text color to black
                  ),
                  subtitle: const Text(
                    "₹ 5000",
                    style: TextStyle(color: Colors.black), // Change text color to black
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite),
                  ),
                  leading: const CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 30,
                  ),
                ),
              ),
            ),
             
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: const Color.fromARGB(255, 232, 229, 229),
                child: ListTile(
                  title: const Text(
                    "Milo",
                    style: TextStyle(color: Colors.black), // Change text color to black
                  ),
                  subtitle: const Text(
                    "₹ 10,000",
                    style: TextStyle(color: Colors.black), // Change text color to black
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite),
                  ),
                  leading: const CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 30,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: const Color.fromARGB(255, 232, 229, 229),
                child: ListTile(
                  title: const Text(
                    "Jude",
                    style: TextStyle(color: Colors.black), // Change text color to black
                  ),
                  subtitle: const Text(
                    "Free",
                    style: TextStyle(color: Colors.black), // Change text color to black
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite),
                  ),
                  leading: const CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 30,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: const Color.fromARGB(255, 232, 229, 229),
                child: ListTile(
                  title: const Text(
                    "Jo",
                    style: TextStyle(color: Colors.black), // Change text color to black
                  ),
                  subtitle: const Text(
                    "Free",
                    style: TextStyle(color: Colors.black), // Change text color to black
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite),
                  ),
                  leading: const CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 30,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: const Color.fromARGB(255, 232, 229, 229),
                child: ListTile(
                  title: const Text(
                    "Pluto",
                    style: TextStyle(color: Colors.black), // Change text color to black
                  ),
                  subtitle: const Text(
                    "Free",
                    style: TextStyle(color: Colors.black), // Change text color to black
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite),
                  ),
                  leading: const CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 30,
                  ),
                ),
              ),
            ),
            // List of favorites
          ],
        ),
      ),
    );
  }
}

class NotificationPage extends StatelessWidget {
  final bool isDarkModeEnabled;

  const NotificationPage({Key? key, required this.isDarkModeEnabled}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: isDarkModeEnabled ? ThemeData.dark() : ThemeData.light(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Notifications'),
        ),
        body: ListView(
          children: List.generate(
            5,
            (index) => ListTile(
              leading: const CircleAvatar(
                child: Icon(Icons.notifications),
              ),
              title: Text('Notification ${index + 1}'),
              subtitle: const Text('This is a dummy notification message.'),
              onTap: () {
                // Handle notification onTap action
              },
            ),
          ),
        ),
      ),
    );
  }
}