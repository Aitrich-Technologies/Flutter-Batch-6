import 'package:flutter/material.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}
class _TabbarState extends State<Tabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Empetz"),
          backgroundColor: Colors.orangeAccent,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.chat_bubble), text: "Chat"),
              Tab(icon: Icon(Icons.call), text: "Calls"),
              Tab(icon: Icon(Icons.settings), text: "Settings"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('Chat Page', style: TextStyle(fontSize: 25))),
            Center(child: Text('Call Page', style: TextStyle(fontSize: 25))),
            Center(child: Text('Settings Page', style: TextStyle(fontSize: 25))),
          ],
        ),
      ),
    );
  }
}
