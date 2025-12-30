import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: Emaillog()));
}
class Emaillog extends StatefulWidget {
  const Emaillog({super.key});
  @override
  State<Emaillog> createState() => _EmaillogState();
}
class _EmaillogState extends State<Emaillog> {
  final TextEditingController emailctr=TextEditingController();
  String? emailerror;
  String? valemail(String email){
    if(!RegExp(r'[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$').hasMatch(email)){
      return "error email id";
    }
    return null;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('email login'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Center( 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
            child: TextField(
              controller: emailctr,
              decoration: InputDecoration(
                labelText: 'Enter email',
                errorText: emailerror,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
              onChanged: (value) {
                setState(() {
                  emailerror=valemail(value);
                });
              },
            ),),
            SizedBox(height: 20),
            ElevatedButton(onPressed: (){
              setState(() {
                emailerror=valemail(emailctr.text);
              });
              if(emailerror==null){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("successful!!!")));
              }
              //Navigator.push(context, MaterialPageRoute(builder:  add()));
              // Navigator.push(
              //   context, 
              //   MaterialPageRoute(builder: (context)=>add()));
            }, 
            child: Text('submit'))
          ],
        ),
      ),
    );
  }
}
// class add extends StatefulWidget {
//   const add({super.key});

//   @override
//   State<add> createState() => _addState();
// }

// class _addState extends State<add> {
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       backgroundColor: Colors.red,
//     );
//   }
// }