// import 'package:empets/login.dart';
// import 'package:empets/signup.dart';
// import 'package:flutter/material.dart';
// class Forgot extends StatefulWidget {
//   const Forgot({super.key});
//   @override
//   State<Forgot> createState() => _ForgotState();
// }
// class _ForgotState extends State<Forgot> {
//     TextEditingController emailctr = TextEditingController();
//     String? emailerror;
//     String? emailval(String email) {
//     if (email.isEmpty) {
//       return 'Email cannot be empty';
//     }
//     if (!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
//         .hasMatch(email)) {
//       return 'Enter a valid email';
//     }
//     return null;
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFEAF6FF),
//       appBar: AppBar(
//         title: Text('Forgot Password'),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Container(
//           width: 400,
//           height: 500,
//           decoration: BoxDecoration(
//             color: const Color.fromARGB(255, 186, 207, 222),
//             borderRadius: BorderRadius.circular(20),
//             boxShadow: [
//                   BoxShadow(
//                     color: Colors.black,
//                     blurRadius: 10,
//                     offset: Offset(4, 4)
//                   )
//                 ],
//                 border: Border.all(
//                   color: Colors.black,
//                   width: 2,
//                 ),            
//           ),
//           child: Padding(padding: EdgeInsetsGeometry.all(40),
//             child: Column(
//               children: [
//                 Text('Enter Email Address ',style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.white, // Decoration color
//     decorationThickness: 2,      
//     shadows: [
//       Shadow(
//         offset: Offset(2, 2),    
//         blurRadius: 3.0,         
//         color: Colors.grey,      
//       )
//     ],),),
    
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: emailctr,
//               decoration: InputDecoration(
                
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(100)
//                 ),
//                 errorText: emailerror,
//                 hint: Text('empetz123@email.com'),
//               ),
//               onChanged: (value) {
//                         setState(() {
//                           emailerror = emailval(value);
//                         });
//                       },
//             ),
//             SizedBox(height: 20),
//             TextButton(onPressed: (){
//               Navigator.pop(context);
//             }, child: Text('Back to Login')),
//             SizedBox(height: 20),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.blueGrey,
//                   foregroundColor: Colors.white,
//                   padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
//                   textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
//                   elevation: 10,
//                 ),
//               onPressed: (){
//                 setState(() {
//                   emailerror = emailval(emailctr.text);
//                 });
//                 if(emailerror==null){
//                    Navigator.push(context, MaterialPageRoute(builder: (context) => veri()));
//                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('done')));
//                 }
//                 ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('fill')));

//             },
//             child: Text('Send')),

//             SizedBox(height: 25),
//             Text('or'),
//             SizedBox(height: 15),
//             Container(
//               decoration: BoxDecoration(
//                 color: Colors.blueGrey,
//                 borderRadius: BorderRadius.circular(30)

//               ),
//               width: 250,
//               height: 50,
              
//               child: Row( children: [
//                 SizedBox(width: 20),
//               Icon(Icons.g_mobiledata,size: 45,color: Colors.white,),
//               Icon(Icons.facebook,size: 25,color: Colors.white,),
//                SizedBox(width: 9),
//                Icon(Icons.apple,size: 30,color: Colors.white,),
//                SizedBox(width: 9),
//               Text('Sign in with ',style: TextStyle(color: Colors.white),)
//               ]
//               ),
//             ),
//             SizedBox(height: 15),
//             Text('Do you have an Accound ? '),
//             SizedBox(height: 15),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.blueGrey,
//                   foregroundColor: Colors.white,
//                   padding: EdgeInsets.symmetric(horizontal: 90,vertical: 20),
//                   textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
//                   elevation: 10,
//                 ),
//               onPressed: (){
//               Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));

//             },
//             child: Text('Sign Up ')),
//               ],
//             ),),
//         ),
//       ),
//     );
//   }
// }



// /////////verifyyyyyyyyy
// ///
// ///

// class veri extends StatefulWidget {
//   const veri({super.key});

//   @override
//   State<veri> createState() => _veriState();
// }

// class _veriState extends State<veri> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFEAF6FF),
//       appBar: AppBar(
//         title: Text('Verification'),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Container(
//           width: 400,
//           height: 500,
//           decoration: BoxDecoration(
//             color: const Color.fromARGB(255, 186, 207, 222),
//             borderRadius: BorderRadius.circular(20),
//             boxShadow: [
//                   BoxShadow(
//                     color: Colors.black,
//                     blurRadius: 10,
//                     offset: Offset(4, 4)
//                   )
//                 ],
//                 border: Border.all(
//                   color: Colors.black,
//                   width: 2,
//                 ),            
//           ),
//           child: Padding(padding: EdgeInsetsGeometry.all(40),
//             child: Column(
//               children: [
//                 Text('Enter Verification Code. ',style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.white, // Decoration color
//     decorationThickness: 2,      
//     shadows: [
//       Shadow(
//         offset: Offset(2, 2),    
//         blurRadius: 3.0,         
//         color: Colors.grey,      
//       )
//     ],),),
    
//                 SizedBox(height: 20),
//                 TextField(
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(100)
//                 ),
//                 hint: Text(' 6  digit code',style: TextStyle(color: Colors.grey),),
//               ),
//             ),
//             SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text('if you didnt receive a code,',style: TextStyle(color: const Color.fromARGB(255, 58, 58, 58)),),
//                 TextButton(onPressed: (){
//               Navigator.pop(context);
//             }, child: Text('Resend')),
//               ],
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.blueGrey,
//                   foregroundColor: Colors.white,
//                   padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
//                   textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
//                   elevation: 10,
//                 ),
//               onPressed: (){
//               Navigator.push(context, MaterialPageRoute(builder: (context) => newpas()));

//             },
//             child: Text('Send')),

//             SizedBox(height: 25),
//             Text('or'),
//             SizedBox(height: 15),
//             Container(
//               decoration: BoxDecoration(
//                 color: Colors.blueGrey,
//                 borderRadius: BorderRadius.circular(30)

//               ),
//               width: 250,
//               height: 50,
              
//               child: Row( children: [
//                 SizedBox(width: 20),
//               Icon(Icons.g_mobiledata,size: 45,color: Colors.white,),
//               Icon(Icons.facebook,size: 25,color: Colors.white,),
//                SizedBox(width: 9),
//                Icon(Icons.apple,size: 30,color: Colors.white,),
//                SizedBox(width: 9),
//               Text('Sign in with ',style: TextStyle(color: Colors.white),)
//               ]
//               ),
//             ),
//             SizedBox(height: 15),
//             Text('Do you have an Accound ? '),
//             SizedBox(height: 15),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.blueGrey,
//                   foregroundColor: Colors.white,
//                   padding: EdgeInsets.symmetric(horizontal: 90,vertical: 20),
//                   textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
//                   elevation: 10,
//                 ),
//               onPressed: (){
//               Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));

//             },
//             child: Text('Sign Up ')),
//               ],
//             ),),
//         ),
//       ),
//     );
//   }
// }

// /////newww  paassss
// ///
// ///

// class newpas extends StatefulWidget {
//   const newpas({super.key});

//   @override
//   State<newpas> createState() => _newpasState();
// }

// class _newpasState extends State<newpas> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFEAF6FF),
//       appBar: AppBar(
//         title: Text('New Password '),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Container(
//           width: 400,
//           height: 500,
//           decoration: BoxDecoration(
//             color: const Color.fromARGB(255, 186, 207, 222),
//             borderRadius: BorderRadius.circular(20),
//             boxShadow: [
//                   BoxShadow(
//                     color: Colors.black,
//                     blurRadius: 10,
//                     offset: Offset(4, 4)
//                   )
//                 ],
//                 border: Border.all(
//                   color: Colors.black,
//                   width: 2,
//                 ),            
//           ),
//           child: Padding(padding: EdgeInsetsGeometry.all(40),
//             child: Column(
//               children: [
//                 Text('Enter New Password ',style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.white, // Decoration color
//     decorationThickness: 2,      
//     shadows: [
//       Shadow(
//         offset: Offset(2, 2),    
//         blurRadius: 3.0,         
//         color: Colors.grey,      
//       )
//     ],),),
//     SizedBox(height: 20),
//                 TextField(
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(100)
//                 ),
//                 hint: Text('password'),
//               ),
//             ),
//              SizedBox(height: 30),
//             Text('Confirm Password ',style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.white, // Decoration color
//     decorationThickness: 2,      
//     shadows: [
//       Shadow(
//         offset: Offset(2, 2),    
//         blurRadius: 3.0,         
//         color: Colors.grey,      
//       )
//     ],),),
//      SizedBox(height: 20),
//                 TextField(
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(100)
//                 ),
//                 hint: Text('password'),
//               ),
//               obscureText: true,
//             ),
//             SizedBox(height: 30),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.blue,
//                   foregroundColor: Colors.white,
//                   padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
//                   textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
//                   elevation: 10,
//                 ),
//               onPressed: (){
//               Navigator.push(context, MaterialPageRoute(builder: (context) => Login() ));

//             },
//             child: Text('Send')),
//              SizedBox(height: 40),
//              Icon(Icons.lock,size: 50,)
                
//               ],
//             ),),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

// Note: Ensure your 'login.dart' and 'signup.dart' files are correctly linked
// import 'package:empets/login.dart';
// import 'package:empets/signup.dart';

// -------------------------------------------------------------------------
// 1. FORGOT PASSWORD PAGE (Email Validation)
// -------------------------------------------------------------------------
class Forgot extends StatefulWidget {
  const Forgot({super.key});

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailctr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAF6FF),
      appBar: AppBar(title: const Text('Forgot Password'), centerTitle: true),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 400,
            padding: const EdgeInsets.all(40),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 186, 207, 222),
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [BoxShadow(color: Colors.black, blurRadius: 10, offset: Offset(4, 4))],
              border: Border.all(color: Colors.black, width: 2),
            ),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const Text('Enter Email Address', 
                    style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Colors.white, fontSize: 18)),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: emailctr,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'empetz123@email.com',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) return 'Email cannot be empty';
                      if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) return 'Enter a valid email';
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Veri()));
                      }
                    },
                    child: const Text('Send'),
                  ),
                  TextButton(onPressed: () => Navigator.pop(context), child: const Text('Back to Login')),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// -------------------------------------------------------------------------
// 2. VERIFICATION PAGE (6-Digit Logic)
// -------------------------------------------------------------------------
class Veri extends StatefulWidget {
  const Veri({super.key});

  @override
  State<Veri> createState() => _VeriState();
}

class _VeriState extends State<Veri> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController codeCtr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAF6FF),
      appBar: AppBar(title: const Text('Verification'), centerTitle: true),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 400,
            padding: const EdgeInsets.all(40),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 186, 207, 222),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black, width: 2),
            ),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const Text('Enter Verification Code', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: codeCtr,
                    keyboardType: TextInputType.number,
                    maxLength: 6,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: '0 0 0 0 0 0',
                      counterText: "",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) return 'Please enter the code';
                      if (value.length < 6) return 'Enter all 6 digits';
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey, foregroundColor: Colors.white),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const NewPas()));
                      }
                    },
                    child: const Text('Verify'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// -------------------------------------------------------------------------
// 3. NEW PASSWORD PAGE (Comparison Logic)
// -------------------------------------------------------------------------
class NewPas extends StatefulWidget {
  const NewPas({super.key});

  @override
  State<NewPas> createState() => _NewPasState();
}

class _NewPasState extends State<NewPas> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController passCtr = TextEditingController();
  final TextEditingController confirmCtr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAF6FF),
      appBar: AppBar(title: const Text('New Password'), centerTitle: true),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 400,
            padding: const EdgeInsets.all(40),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 186, 207, 222),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black, width: 2),
            ),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const Text('Create New Password', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: passCtr,
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'New Password',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                    ),
                    validator: (value) {
                      if (value == null || value.length < 6) return 'Min 6 characters required';
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: confirmCtr,
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Confirm Password',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                    ),
                    validator: (value) {
                      if (value != passCtr.text) return 'Passwords do not match';
                      return null;
                    },
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, foregroundColor: Colors.white),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Password Reset Successful!')));
                        // This takes the user back to the very first screen (Login)
                        Navigator.popUntil(context, (route) => route.isFirst);
                      }
                    },
                    child: const Text('Update'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}