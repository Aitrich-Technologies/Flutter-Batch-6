import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class Activity1 extends StatefulWidget {
  const Activity1({super.key});

  @override
  State<Activity1> createState() => _Activity1State();
}

class _Activity1State extends State<Activity1> {

  bool isloading = true;
  @override
  void initState()
  {
    super.initState();
    Future.delayed(Duration(seconds: 5),
    (){
      setState(() {
        isloading = false;
      });
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Skeletonizer App",
        style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Skeletonizer(
        enabled: isloading,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Item 0"),
                subtitle: Text("Description of Item 0"),
                trailing: Icon(Icons.chat),
              ),
              SizedBox(height: 20),
              ListTile(
                leading: Icon(Icons.wifi),
                title: Text("Item 1"),
                subtitle: Text("Description of Item 1"),
                trailing: Icon(Icons.abc),
              ),
              SizedBox(height: 20),
              ListTile(
                leading: Icon(Icons.login),
                title: Text("Item 2"),
                subtitle: Text("Description of Item 2"),
                trailing: Icon(Icons.link),
              )
            ],
          )
        )
      ),
    );
  }
}