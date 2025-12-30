
import 'package:empets/login.dart';
import 'package:empets/silog.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController namectr = TextEditingController();
  TextEditingController emailctr = TextEditingController();
  TextEditingController passctr = TextEditingController();
  TextEditingController cpassctr = TextEditingController();

  bool isPasswordHidden = true;
  bool isConfirmPasswordHidden = true;

  String? nameerror;
  String? emailerror;
  String? passerror;
  String? cpasserror;

  String? nameval(String name) {
    if (name.isEmpty) {
      return 'Username cannot be empty';
    }
    if (RegExp(r'[!@#<>?":_~;[\]\\|=+)(*&^%0-9-]').hasMatch(name)) {
      return 'Username must not contain numbers or special characters';
    }
    return null;
  }

  String? emailval(String email) {
    if (email.isEmpty) {
      return 'Email cannot be empty';
    }
    if (!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
        .hasMatch(email)) {
      return 'Enter a valid email';
    }
    return null;
  }

  String? passval(String pass) {
    if (pass.isEmpty) {
      return 'Password cannot be empty';
    }
    if (pass.length < 6) {
      return 'Password must be at least 6 characters';
    }
    if (!RegExp(r'[A-Z]').hasMatch(pass)) {
      return 'Password must contain one uppercase letter';
    }
    if (!RegExp(r'[0-9]').hasMatch(pass)) {
      return 'Password must contain one number';
    }
    return null;
  }

  String? cpassval(String cpass) {
    if (cpass.isEmpty) {
      return 'Confirm password required';
    }
    if (cpass != passctr.text) {
      return 'Passwords do not match';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 10),
              Image.asset('assets/Elogo.png', width: 150, height: 100),
              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                      textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: const Text('Log in'),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                      textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {},
                    child: const Text('Sign up'),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              Container(
                width: 500,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 186, 207, 222),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black, width: 2),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 10,
                      offset: Offset(4, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    TextField(
                      controller: namectr,
                      decoration: InputDecoration(
                        labelText: 'Name',
                        errorText: nameerror,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          nameerror = nameval(value);
                        });
                      },
                    ),

                    const SizedBox(height: 20),

                    TextField(
                      controller: emailctr,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        errorText: emailerror,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          emailerror = emailval(value);
                        });
                      },
                    ),

                    const SizedBox(height: 20),

                    TextField(
                      controller: passctr,
                      obscureText: isPasswordHidden,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        errorText: passerror,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            isPasswordHidden
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          onPressed: () {
                            setState(() {
                              isPasswordHidden = !isPasswordHidden;
                            });
                          },
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          passerror = passval(value);
                        });
                      },
                    ),

                    const SizedBox(height: 20),

                    TextField(
                      controller: cpassctr,
                      obscureText: isConfirmPasswordHidden,
                      decoration: InputDecoration(
                        labelText: 'Confirm Password',
                        errorText: cpasserror,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            isConfirmPasswordHidden
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          onPressed: () {
                            setState(() {
                              isConfirmPasswordHidden =
                                  !isConfirmPasswordHidden;
                            });
                          },
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          cpasserror = cpassval(value);
                        });
                      },
                    ),

                    const SizedBox(height: 30),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                        textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        setState(() {
                          nameerror = nameval(namectr.text);
                          emailerror = emailval(emailctr.text);
                          passerror = passval(passctr.text);
                          cpasserror = cpassval(cpassctr.text);
                        });

                        if (nameerror == null &&
                            emailerror == null &&
                            passerror == null &&
                            cpasserror == null) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => siLogin(),
                            ),
                          );
                        }
                      },
                      child: const Text('Sign Up'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
