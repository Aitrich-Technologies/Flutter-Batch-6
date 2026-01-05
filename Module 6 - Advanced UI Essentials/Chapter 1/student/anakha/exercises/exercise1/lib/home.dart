import 'package:exercise1/calls.dart';
import 'package:exercise1/chats.dart';
import 'package:exercise1/settings.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title:Text("Bottom Sheet with Tabs"),
          bottom:TabBar(
            labelColor: Colors.grey,
            unselectedLabelColor: Colors.blueGrey,
            tabs: [
              Tab(text: "Chats"),
              Tab(text: "Calls"),
              Tab(text: "Settings"),
            ],
          ),
        ),
        body:TabBarView(
          children: [
            Chats(),
            Calls(),
            Settings(),
          ],
        ),
      ),
    );
  }
}
