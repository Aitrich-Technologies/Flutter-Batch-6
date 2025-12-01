import 'package:flutter/material.dart';

class Chatpage extends StatefulWidget {
  const Chatpage({super.key});

  @override
  State<Chatpage> createState() => _Exercise1State();
}

class _Exercise1State extends State<Chatpage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("Bottom Sheet Sample",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold)),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.chat),
                text: "Chats",
              ),
              Tab(
                icon: Icon(Icons.settings),
                text: "settings",
              ),
              Tab(
                icon: Icon(Icons.call),
                text: "callS",
              )
            ]
          )
        ),
        body: TabBarView(
          children: [
             Center(
          child: ElevatedButton(onPressed: (){
            showModalBottomSheet(
              context: context, 
              builder: (BuildContext context){
                return Container(
                  height: 250,
                  color: Colors.yellow,
                  child: Center(
                    child: Column(
                      mainAxisAlignment:MainAxisAlignment.center,
                      //mainAxisSize: MainAxisSize.max,
                      children: [
                        Text("Model BottomSheet"),
                        SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("Close BottomSheet"))
                      ],
                    ),
                  ),
                );
            });
          }, child: Text("ShowModelBottomSheet")),
        ),
        Center(
          child: Text("settings Page"),
        ),
        Center(
          child: Text("calling Page"),
        )
          ])
      ),
    );
  }
}