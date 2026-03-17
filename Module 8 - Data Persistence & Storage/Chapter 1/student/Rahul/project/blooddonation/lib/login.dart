import 'package:flutter/material.dart';

class Loginapp extends StatefulWidget {
  const Loginapp({super.key});

  @override
  State<Loginapp> createState() => _LoginappState();
}

class _LoginappState extends State<Loginapp> {
  TextEditingController emailctr=TextEditingController();
  TextEditingController passctr=TextEditingController();

  String? emailerror;
  String? passerror;

  String? emailval(String email){
    if(RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$').hasMatch(email)){

    }
    if(email.isEmpty){
      return "pleas enter email";
    }
    return null;
  }
  String? passval(String pass){
    if(pass.length<6){
      return "Password must be at least 6 characters long";
    }
    if(!RegExp(r'[A-Z]').hasMatch(pass)){
      return "Password must be at least one uppercase letter";
    }
    if(!RegExp(r'[0-9]').hasMatch(pass)){
      return "password must contain at least one numer";
    }
    if(pass.isEmpty){
      return "pleas enter password";
    }
    return null;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Text("blood donation",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.red),),
            SizedBox(height: 20,),
            Container(
              height: 100,
              width: 100,
              child: Image.network('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAARMAAAC3CAMAAAAGjUrGAAABjFBMVEX////yBy/j7//jBS749vf28PL//v/7///w9/////35/////f/2///jACzJ4vfhGTfE3/3M3//4Y37M0PD1//j4XnrnABvk8//gmqD7TmvvABj5hZr59vbyzdP1ABb9397YABHvtbnxByr25OfJABXSABnGAADCAADglJbDAAnqn6jdABz/+f7MAADui5ffcoDPACTeACTuCDHhk53fABH0ACP89/DulJXbACPQABTS6v3QlKfed4DLBi7svMHu8/37qLfz1trWiKDJACLZAADwz9DxrK3lZHjoWGz31+D3srPkTmD87+3dL0fG2/7gPFPdK0nxs8LrIEDieIvo/fjhRmrkHUrhXHjwkajTVFzKDDbprr/kvr7VPUvsXGr6e5b4YIL2QlnVNVT8VHnybY3/Ekf0S2Pv5t3ygIr1wc33dYXtNVfr//HhY278ABrQNUTpvdbVZnPSwtjMxdXJUW7Lob666PTRiZrUZoS29f/cr7rVkLLZIE3Pa3rCACnghIXIJj3Zam7r18zRR1Tdd2A9AAAeHUlEQVR4nO2djUMax7r/F1lm2JkB1KyrNRAWFjAyC7KAZkkVpQRfKpTE2KTJMTmnSW986fH2mnPPaW972qTNP/57ZkGDBgQTRH+nfJu0BRbY+fDM8zIzOytJQw011FBDDTXUUEMNNdRQQw011FBDDTXUUEMN9f+5FBA+0VWfzfWQ0qqrPplrpAaPIZRjIURlb0OMMfnPi0W4EEVBxOtdHmlocuREXgIvNo656vMcpMAaMPO2cBhZXm55MLkMXP5kXUnBdHnkFBEvxJxWKvCMF0t/Eibix0d4stlZJptglpGwnJEzWqZgLH8CMuBFTnyIw2VyEryrLNqNvcvwz+QpKkyEI3TVJ33Jwt5TXWTE25KZiP8SdsZYzP94JtixgxZbYI3UREQYhCREJemUs50cG1v+T3a1wpNMng28DhN0IjjmtB35x0YnF8QBvX8PRUyhEiHwCzSewAiLr8H0+ABMwB4pef8WiHIUoytgjxD2nnWjI97TjVWkM31rdGxUWMpFbAVjShk2Q6vptXXQw9VKFUuYmlRtHkCoCbRIuJibEwfM3YlsIHiOXYk9Ln+ARCQmy973Wj57yOgYyKssXOB8KSHVL9czXOdc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',
              fit: BoxFit.cover,),
            ),
            SizedBox(height: 20,),
            Text("LOGIN",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.black),),
            SizedBox(height: 20,),
            Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 100),
              child: Column(
                children: [
                  TextField(
                    controller: emailctr,
                    decoration: InputDecoration(
                      errorText: emailerror,
                      labelText: "Email ID",
                      hintText: "Enter your Email ID",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),                      
                    ),
                    onChanged: (value) {
                      setState(() {
                        emailerror=emailval(value);
                      });
                    },
                  ),
                  SizedBox(height: 20,),
                  TextField(
                    controller: passctr,
                    decoration: InputDecoration(
                      errorText: passerror,
                      labelText: "Password",
                      hintText: "Enter Password",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                    ),
                    onChanged: (value) {
                      setState(() {
                        passerror=passval(value);
                      });
                    },
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red
                    ),
                    onPressed: (){
                      setState(() {
                        emailerror=emailval(emailctr.text);
                        passerror=passval(passctr.text);
                      });
                      if(emailerror==null&& passerror==null){
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login successful")));
                      }
                    }, 
                    child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}