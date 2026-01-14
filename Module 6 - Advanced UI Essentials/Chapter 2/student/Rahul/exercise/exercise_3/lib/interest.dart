import 'package:flutter/material.dart';
class interest extends StatefulWidget {
  const interest({super.key});
  @override
  State<interest> createState() => _interestState();
}
class _interestState extends State<interest> {
  String? selectedGender;
  final TextEditingController namectr=TextEditingController();
  final TextEditingController mobctr=TextEditingController();
  final TextEditingController pinctr=TextEditingController();
  String? nameerror;
  String? moberror;
  String? pinerror;
  String? nameval(String name){
    if(RegExp(r'[!@#<>?":_~;[\]\\|=+)(*&^%0-9-)]').hasMatch(name)){
      return 'Name must not contain special characters or number';
    }
    if(name.isEmpty){
      return 'name is required';
    }
    return null;
  }
  String? mobval(String mob){
    if(!RegExp(r'^\d{10}$').hasMatch(mob)){
      return 'Mobile number is required';
    }
    if(mob.isEmpty){
      return 'Mobile number is required';
    }
    return null;
  }
  String? pinval(String pin){
    if(RegExp(r'[!@#<>?":_~;[\]\\|=+)(*&^%-)]').hasMatch(pin)){
      return 'Pincode is required';
    }
    if(!RegExp(r'^\d{6}$').hasMatch(pin)){
      return 'Pincode is required';
    }
    if(pin.isEmpty){
      return 'Pincode is required';
    }
    return null;
  }
  void clear(){
    setState(() {
      namectr.clear();
    mobctr.clear();
    pinctr.clear();
    nameerror = null;
    moberror = null;
    pinerror = null;
    selectedGender= null;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Interest Calculator"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.person,size: 90,color: Colors.white,),    
                ),
              ],
            ),
            SizedBox(height: 40),
            TextField(
              controller: namectr,
              decoration: InputDecoration(
                labelText: 'Name',
                errorText: nameerror,
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  nameerror=nameval(value);
                });
              },
            ),
            SizedBox(height: 40),
             TextField(
              controller: mobctr,
              keyboardType: TextInputType.number,
              maxLength: 10,
              decoration: InputDecoration(
                labelText: 'Mobile Number',
                errorText: moberror,
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  moberror=mobval(value);
                });
              },
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Flexible(
                  child: TextField(
                    maxLength: 6,
                    keyboardType: TextInputType.number,
                    controller: pinctr,
                    decoration: InputDecoration(
                    labelText: 'Pincode',
                    errorText: pinerror,
                    border: OutlineInputBorder()
                    ),
                    onChanged: (value) {
                    setState(() {
                      pinerror=pinval(value);
                    });
                  },
                  ),
                ),
                SizedBox(width: 50),
                Flexible(
                  child: DropdownButtonFormField<String>(
                    key: ValueKey(selectedGender),
                    value: selectedGender,
                    decoration: const InputDecoration(
                      labelText: "Gender",
                      ),
                    items:  [
                      DropdownMenuItem(
                        value: "Male",
                        child: Text("Male"),
                      ),
                      DropdownMenuItem(
                        value: "Female",
                        child: Text("Female"),
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        selectedGender = value;
                      });
                    },
                  ),
                )
              ],
            ),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 85)
                  ),
                  onPressed: (){
                    setState(() {
                      nameerror=nameval(namectr.text);
                      moberror=mobval(mobctr.text);
                      pinerror=pinval(pinctr.text);
                    });
                    if (nameerror==null&&moberror==null&&pinerror==null&& selectedGender!=null){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Registered Successfully")));
                    }else if (selectedGender == null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text("Please select gender")),
                      );
                    } 
                    else{
                       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("please fill in all fields correctly")));
                    }
                  }, 
                  child: Text("Register"),
                ),
                SizedBox(width: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 85)
                  ),
                  onPressed: (){
                    clear();
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Erase All")));
                  },
                  child: Text("Clear all"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}