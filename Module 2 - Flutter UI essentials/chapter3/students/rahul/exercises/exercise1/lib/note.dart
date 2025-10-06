import 'package:flutter/material.dart';
class Noti extends StatefulWidget{
  Noti({super.key});
  State<Noti> createState() => _noti();
}
class _noti extends State<Noti>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home',style: TextStyle(fontSize: 20,color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
        actions: [
          IconButton(onPressed: (){
            Navigator.of (context).push(
            MaterialPageRoute(builder: 
            (context) => fication() ,));},
           icon: Icon(Icons.notifications,color: Colors.white,)),
           SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
        child: Column(children: [
          Padding(padding: EdgeInsetsGeometry.all(30),
          child: Container(
            width: 900,
            height: 250,
            decoration: BoxDecoration(),
            child: Image.asset('assets/car3.jpg',fit: BoxFit.cover,),
          ),),
          Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 30),
          child: Container(
            width: 900,
            height: 250,
            decoration: BoxDecoration(),
            child: Image.asset('assets/car1.jpg',fit: BoxFit.cover,),
          ),),
          Padding(padding: EdgeInsetsGeometry.all(30),
          child: Container(
            width: 900,
            height: 250,
            decoration: BoxDecoration(),
            child: Image.asset('assets/car2.jpg',fit: BoxFit.cover,),
          ),),
          Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 30),
          child: Container(
            width: 900,
            height: 250,
            decoration: BoxDecoration(),
            child: Image.asset('assets/car4.jpg',fit: BoxFit.cover,),
          ),),
        ],),
      ),
      )
    );
  } 
}
class fication extends StatefulWidget {
  const fication({super.key});
  @override
  State<fication> createState() => _fic();
}
class _fic extends State<fication> {
  List<String> notifications = [
    "Notification",
    "Notification",
    "Notification",
    "Notification",
    "Notification",
    "Notification",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification'),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                leading: const Icon(Icons.people_sharp),
                title: Text(
                  notifications[index],
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.delete, color: Colors.red),
                  onPressed: () {
                    setState(() {
                      notifications.removeAt(index); 
                    });
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
