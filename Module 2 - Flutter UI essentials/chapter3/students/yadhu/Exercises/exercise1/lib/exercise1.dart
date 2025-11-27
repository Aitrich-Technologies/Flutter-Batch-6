import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[100],
        title: Text("Home",
        style: TextStyle(color: Colors.white,
        fontSize: 30,fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Notif_page()));
          }, icon: Icon(Icons.notifications,color: Colors.white))
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            SizedBox(
            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvtoWYlfc7clMtmaPlssS3gKAOBjcJPP-KIQ&s",
            height: 200,
            width: 450,
            fit: BoxFit.cover,
            )),
            SizedBox(height: 20),
            SizedBox(
            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3X4E9x1mVbp08brjjQAi3OH5aBR2gSw0a0A&s",
            height: 200,
            width: 450,
            fit: BoxFit.cover,
            )),
             SizedBox(height: 20),
            SizedBox(
            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJ0qNHE7hfuuvkwh7oxUffCt6VrAenWS16vw&s",
            height: 200,
            width: 450,
            fit: BoxFit.cover,
            )),
          ],
        ),
        ),
      )
    );
  }
}

class Notif_page extends StatelessWidget {
  const Notif_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[300],
        title: Text("Notification"),
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(height: 10),
        Container(
          width: 100,
          height: 50,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(20)
          ),
        child: ListTile(
          leading: Icon(Icons.person),
          title: Text("Notification"),
          trailing: Icon(Icons.delete),
        ),
        ),
        SizedBox(height: 10),
        Container(
          width: 100,
          height: 50,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(20)
          ),
        child: ListTile(
          leading: Icon(Icons.person),
          title: Text("Notification"),
          trailing: Icon(Icons.delete),
        ),
        ),
        SizedBox(height: 10),
        Container(
          width: 100,
          height: 50,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(20)
          ),
        child: ListTile(
          leading: Icon(Icons.person),
          title: Text("Notification"),
          trailing: Icon(Icons.delete),
        ),
        ),
        SizedBox(height: 10),
        Container(
          width: 100,
          height: 50,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(20)
          ),
        child: ListTile(
          leading: Icon(Icons.person),
          title: Text("Notification"),
          trailing: Icon(Icons.delete),
        ),
        ),
        SizedBox(height: 10),
        Container(
          width: 100,
          height: 50,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(20)
          ),
        child: ListTile(
          leading: Icon(Icons.person),
          title: Text("Notification"),
          trailing: Icon(Icons.delete),
        ),
        ),
        SizedBox(height: 10),
        Container(
          width: 100,
          height: 50,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(20)
          ),
        child: ListTile(
          leading: Icon(Icons.person),
          title: Text("Notification"),
          trailing: Icon(Icons.delete),
        ),
        ),
        SizedBox(height: 10),
        Container(
          width: 100,
          height: 50,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(20)
          ),
        child: ListTile(
          leading: Icon(Icons.person),
          title: Text("Notification"),
          trailing: Icon(Icons.delete),
        ),
        )
        ],
      ),
    );
  }
}