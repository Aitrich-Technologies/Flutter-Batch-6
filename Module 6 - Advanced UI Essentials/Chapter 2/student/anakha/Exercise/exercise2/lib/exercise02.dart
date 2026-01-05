import 'package:flutter/material.dart';

class Exercise02 extends StatefulWidget {
  
  const Exercise02({super.key});

  @override
  State<Exercise02> createState() => _Exercise02State();
}

class _Exercise02State extends State<Exercise02> {
  bool isDark = false;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  String? usernameError;
  String? emailError;
  String? messageError;

  String? validateUsername(String username) {
    if (username.isEmpty) {
      return "Username cannot be empty";
    }
    if (RegExp(r'[0-9!@#<>":_`~;[\]\\|=+)(*&^%]').hasMatch(username)) {
      return "Username must not contain numbers or special characters";
    }
    return null;
  }

  String? validateEmail(String email) {
    if (email.isEmpty) {
      return "Email cannot be empty";
    }
    if (!RegExp(
            r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
        .hasMatch(email)) {
      return "Invalid email address";
    }
    return null;
  }
  void submitForm() {
    setState(() {
      usernameError = validateUsername(nameController.text);
      emailError = validateEmail(emailController.text);
      messageError = messageController.text.isEmpty
          ? "Message cannot be empty"
          : null;
    });
  }
  @override
  Widget build(BuildContext context) {
  final iconColor = isDark ? Colors.white : Colors.black;

  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.orange,
      title: const Text("Contact Us"),
      actions: [
        IconButton(
          onPressed: () {
            setState(() {
              isDark = !isDark;
            });
          },
          icon: Icon(
            isDark ? Icons.light_mode : Icons.dark_mode,
            color: iconColor,
          ),
        )
      ],
    ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: "Name",
                errorText: usernameError,
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: "Email",
                errorText: emailError,
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: messageController,
              decoration: InputDecoration(
                labelText: "Message",
                errorText: messageError,
              ),
              maxLines: 3,
            ),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: submitForm,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                child: const Text("Submit"),
              ),
            ),
            const Spacer(),
            const Text(
              "Info",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            Column(
              children: [
                Icon(Icons.email, color: iconColor),
                const SizedBox(height: 15),
                Icon(Icons.phone, color: iconColor),
                const SizedBox(height: 15),
                Icon(Icons.location_on, color: iconColor),
              ],
            ),
          ],
        ),
      ),
    );
  }
}