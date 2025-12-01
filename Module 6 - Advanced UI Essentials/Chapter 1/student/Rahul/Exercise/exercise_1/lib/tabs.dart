import 'package:exercise_1/chat.dart';
import 'package:flutter/material.dart';
class tabs extends StatefulWidget {
  const tabs({super.key});
  @override
  State<tabs> createState() => _tabsState();
}
class _tabsState extends State<tabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, 
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellowAccent,
          title: Text('Bottom Sheet Sample'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.message),text: 'Chats',),
              Tab(icon: Icon(Icons.phone),text: 'Calls',),
              Tab(icon: Icon(Icons.settings),text: 'Settings',)
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Bottomsheett(),
            Center(child: Text('Calls tab'),),
            Center(child: Text('Settings Tab'),),
          ],
        ),
      ),
    );
  }
}