import 'package:activity_2/text.dart';
import 'package:circular_menu/circular_menu.dart';
import 'package:flutter/material.dart';

class Activity2 extends StatefulWidget {
  const Activity2({super.key});

  @override
  State<Activity2> createState() => _Activity2State();
}

class _Activity2State extends State<Activity2> {
  String _ColorName = "No";
  Color _color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Flutter circular menu"),
      ),
      body: CircularMenu(
        alignment: Alignment.bottomCenter,
        backgroundWidget: Center(
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black, fontSize: 28),
              children: [
                TextSpan(
                  text: _ColorName,
                  style: TextStyle(color: _color, fontWeight: FontWeight.bold),
                ),
                TextSpan(text: "Button is clicked"),
              ],
            ),
          ),
        ),
        toggleButtonColor: Colors.pink,
        items: [
          CircularMenuItem(
            icon: Icons.home,
            color: Colors.green,
            onTap: () {
              setState(() {
                _color = Colors.green;
                _ColorName = "green";
              });
            },
          ),
          CircularMenuItem(
            icon: Icons.search,
            color: Colors.blue,
            onTap: () {
              setState(() {
                _color = Colors.blue;
                _ColorName = "blue";
              });
            },
          ),
          CircularMenuItem(
            icon: Icons.settings,
            color: Colors.orange,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Textt()),
              );
            },
          ),
          CircularMenuItem(
            icon: Icons.chat,
            color: Colors.purple,
            onTap: () {
              setState(() {
                _color = Colors.purple;
                _ColorName = "purple";
              });
            },
          ),
          CircularMenuItem(
            icon: Icons.notifications,
            color: Colors.brown,
            onTap: (){
              setState(() {
                _color = Colors.brown;
                _ColorName = "Brown";
              });
            })
        ],
      ),
    );
  }
}
