import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SkeletonizerApp extends StatefulWidget {
  const SkeletonizerApp({super.key});

  @override
  State<SkeletonizerApp> createState() => _SkeletonizerAppState();
}

class _SkeletonizerAppState extends State<SkeletonizerApp> {
  bool isLoad= true;
  @override
  void initState(){
    super.initState();
    super.initState();
    Future.delayed(Duration(seconds: 5),
    (){
      setState(() {
        isLoad=false;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: Text('Skeletonizer App',
        style: TextStyle(color: Colors.white
        ),),
      ),
      body: Skeletonizer(
        enabled: isLoad,
        child: Padding(
          padding: EdgeInsetsGeometry.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Item 1'),
                subtitle: Text('Description of Item 1'),
                trailing: Icon(Icons.chat),
              ),
              SizedBox(height: 20,),
              ListTile(
                leading: Icon(Icons.wifi),
                title: Text('Item 2'),
                subtitle: Text('Description of Item 2'),
                trailing: Icon(Icons.abc),
              ),
              SizedBox(height: 20,),
              ListTile(
                leading: Icon(Icons.login),
                title: Text('Item 3'),
                subtitle: Text('Description of Item 3'),
                trailing: Icon(Icons.link),
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}