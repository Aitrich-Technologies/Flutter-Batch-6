import 'package:flutter/material.dart';

class drawer extends StatelessWidget {
  const drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("empetz"),
      ),
      body: Divider(),
      drawer: Drawer(
        backgroundColor: Colors.blueGrey,
        shadowColor: Colors.amber,
        surfaceTintColor: Colors.deepOrange,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.brown),
              child: Column(
                children: [
                  
                  Text('RAHUL M G',style: TextStyle(fontSize: 20),),
                  CircleAvatar(
                    backgroundColor: Colors.blueAccent,
                    
                    radius: 40,
                    child: Icon(Icons.person,size: 50,color: Colors.black,),),
                  //Text('RAHUL M G',style: TextStyle(fontSize: 20),)
                ],
              )
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () => Navigator.pop(context),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            )
          ],
        ),
      ),
    );
  }
}