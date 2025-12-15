import 'package:flutter/material.dart';

class bb extends StatefulWidget {
  const bb({super.key});

  @override
  State<bb> createState() => _bbState();
}

class _bbState extends State<bb> {
  TextEditingController screen = TextEditingController();

  String firstNumber = "";
  String operator = "";

  void addNumber(String num) {
    setState(() {
      screen.text += num;
    });
  }

  void addOperator(String op) {
    setState(() {
      firstNumber = screen.text;     // store first number
      operator = op;                 // store operator
      screen.text = "";              // clear screen for 2nd number
    });
  }

  void calculate() {
    double num1 = double.tryParse(firstNumber) ?? 0;
    double num2 = double.tryParse(screen.text) ?? 0;
    double result = 0;

    if (operator == "+") {
      result = num1 + num2;
    }

    setState(() {
      screen.text = result.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // TextField Display
            TextField(
              controller: screen,
              readOnly: true,
              textAlign: TextAlign.right,
              style: const TextStyle(
                  color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: '0',
                hintStyle: TextStyle(color: Colors.white54, fontSize: 50),
              ),
            ),

            const SizedBox(height: 30),

            // Number 2
            GestureDetector(
              onTap: () => addNumber("2"),
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.grey,
                child: Text("2", style: TextStyle(fontSize: 30, color: Colors.white)),
              ),
            ),

            const SizedBox(height: 20),

            // Number 3
            GestureDetector(
              onTap: () => addNumber("3"),
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.grey,
                child: Text("3", style: TextStyle(fontSize: 30, color: Colors.white)),
              ),
            ),

            const SizedBox(height: 20),

            // +
            GestureDetector(
              onTap: () => addOperator("+"),
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.orangeAccent,
                child: Text("+", style: TextStyle(fontSize: 30, color: Colors.white)),
              ),
            ),

            const SizedBox(height: 20),

            // .
            GestureDetector(
              onTap: () => addNumber("."),
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.grey,
                child: Text(".", style: TextStyle(fontSize: 30, color: Colors.white)),
              ),
            ),

            const SizedBox(height: 20),

            // =
            GestureDetector(
              onTap: () => calculate(),
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.orangeAccent,
                child: Text("=", style: TextStyle(fontSize: 30, color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}