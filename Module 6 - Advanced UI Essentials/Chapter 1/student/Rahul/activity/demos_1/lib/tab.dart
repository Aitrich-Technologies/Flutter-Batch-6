import 'package:flutter/material.dart';
class tabbs extends StatefulWidget {
  const tabbs({super.key});
  @override
  State<tabbs> createState() => _tabbsState();
}
class _tabbsState extends State<tabbs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.limeAccent,
          title: Text('Tab'),
          centerTitle: true,
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.chat),
              text: "Chats",
            ),
            Tab(
              icon: Icon(Icons.video_call),
              text: "calls",
            ),
            Tab(
              icon: Icon(Icons.settings),
              text: "settings",
            )
          ]),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("chat page"),),
            Center(child: Text("calls page")),
            Center(child: Text("settings page")),
            ]),),);}}