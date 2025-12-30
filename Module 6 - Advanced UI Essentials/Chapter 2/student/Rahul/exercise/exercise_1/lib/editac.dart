import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class editac extends StatefulWidget {
  const editac({super.key});
  @override
  State<editac> createState() => _editacState();
}
class _editacState extends State<editac> {
  final TextEditingController namectr =TextEditingController();
  final TextEditingController emailctr=TextEditingController();
  final TextEditingController phctr=TextEditingController();
  final TextEditingController addctr=TextEditingController();
  String? nameerror;
  String? emailerror;
  String? pherror;
  String? adderror;
  String? nameval(String name){
    if(RegExp(r'[!@#<>?":_~;[\]\\|=+)(*&^%0-9-)]').hasMatch(name)){
      return 'Name must not contain special characters or number';
    }
    if(name.isEmpty){
      return 'Name cannot be empty';
    }
    return null;
  }
  String? emailval(String email){
    if(!RegExp(r'[a-zA-Z0-9.%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z0-9]{2,}$').hasMatch(email)){
      return 'Please enter a valid email ';
    }
    if(email.isEmpty){
      return 'Email cannot be empty';
    }
    return null;
  }
  String? phval(String ph){
    if(!RegExp(r'^\d{10}$').hasMatch(ph)){
      return 'Please enter a valid phonenumber ';
    }
    if(ph.isEmpty){
      return 'Phno cannot be empty';
    }
    return null;
  }
  String? addval(String add){
    if(add.isEmpty){
      return 'Address cannot be empty';
    }
    return null;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Edit Account"),
        leading: Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.black,
                ),
                SizedBox(width: 80,),
                Text("Change/Delete Photo",style: TextStyle(fontSize: 20),)
              ],
            ),
            SizedBox(height: 30),
            TextField(
              controller: namectr,
              decoration: InputDecoration(
                labelText: 'Name',
                errorText: nameerror,
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  nameerror =nameval(value);
                });
              },
            ),
            SizedBox(height: 20),
             TextField(
              controller: emailctr,
              decoration: InputDecoration(
                labelText: 'Email',
                errorText: emailerror,
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  emailerror=emailval(value);
                });
              },
            ),
            SizedBox(height: 20),
             TextField(
              controller: phctr,
              keyboardType: TextInputType.numberWithOptions(),
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(10)
              ],
              decoration: InputDecoration(
                labelText: 'Phone Number',
                errorText: pherror,
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  pherror=phval(value);
                });
              },
            ),
            SizedBox(height: 10),
            TextField(
              controller: addctr,
              keyboardType: TextInputType.multiline,
              maxLines: 5,
              decoration: InputDecoration(
                labelText: 'Adderss',
                errorText: adderror,
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  adderror=addval(value);
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 10,
                backgroundColor: Colors.orange,
                padding: EdgeInsets.symmetric(horizontal: 220,vertical: 20)
              ),
              onPressed: (){       
                setState(() {
                  nameerror=nameval(namectr.text);
                  emailerror=emailval(emailctr.text);
                  pherror=phval(phctr.text);
                  adderror=addval(addctr.text);
                });     
                if(emailerror==null&&nameerror==null&&adderror==null&&pherror==null){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Saved Successfully")));
                }
                else{
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("fill & fix errors")));
                }
              },
              child: Text('Save '),
            ),
          ],
        ),
      ),
      ),
    );
  }
}