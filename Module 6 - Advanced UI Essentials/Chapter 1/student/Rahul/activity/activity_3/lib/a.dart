import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: a(),
  ));
}

//import 'package:flutter/material.dart';

class a extends StatefulWidget {
  const a({super.key});

  @override
  State<a> createState() => aState();
}

class aState extends State<a> {
  TextEditingController screen = TextEditingController();
  TextEditingController screenone = TextEditingController();

  String firstNumber = "";
  String operator = "";
  bool shouldResetScreen = false;
  bool isCalculated = false; // blocks multiple '='

  // ---------------- NUMBER ----------------
  void addNumber(String num) {
    setState(() {
      String current = screen.text;

      if (shouldResetScreen) {
        screen.text = num;
        shouldResetScreen = false;
        return;
      }

      if (current == "0") {
        if (num == "0") return;
        screen.text = num;
        return;
      }

      screen.text += num;
    });
  }

  // ---------------- DOT ----------------
  void addPoint() {
    setState(() {
      if (shouldResetScreen) {
        screen.text = "0.";
        shouldResetScreen = false;
        return;
      }
      if (!screen.text.contains(".")) {
        screen.text += ".";
      }
    });
  }

  // ---------------- CLEAR ----------------
  void clearAll() {
    setState(() {
      screen.clear();
      screenone.clear();
      firstNumber = "";
      operator = "";
      shouldResetScreen = false;
      isCalculated = false;
    });
  }

  // ---------------- SIGN ----------------
  void toggleSign() {
    setState(() {
      double value = double.tryParse(screen.text) ?? 0;
      if (value != 0) {
        value = -value;
        screen.text =
            value % 1 == 0 ? value.toInt().toString() : value.toString();
      }
    });
  }

  // ---------------- OPERATOR ----------------
  void Operator(String op) {
    if (screen.text.isEmpty) return;

    setState(() {
      firstNumber = screen.text;
      operator = op;
      screenone.text = "$firstNumber $operator";
      shouldResetScreen = true;
      isCalculated = false; // allow '=' again
    });
  }

  // ---------------- CALCULATE ----------------
  void calculate() {
    if (isCalculated) return; // block second '='

    double num1 = double.tryParse(firstNumber) ?? 0;
    double num2 = double.tryParse(screen.text) ?? 0;
    double result = 0;

    if (operator == "+") {
      result = num1 + num2;
    } else if (operator == "-") {
      result = num1 - num2;
    } else if (operator == "X") {
      result = num1 * num2;
    } else if (operator == "/") {
      result = num2 != 0 ? num1 / num2 : 0;
    } else if (operator == "%") {
      result = num1 / 100;
    }

    setState(() {
      if (operator == "%") {
        screenone.text = "$firstNumber $operator";
      } else {
        screenone.text = "$firstNumber $operator $num2 =";
      }

      screen.text =
          result % 1 == 0 ? result.toInt().toString() : result.toString();

      shouldResetScreen = true;
      isCalculated = true; // lock '='
    });
  }

  // ---------------- UI ----------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextField(
                controller: screenone,
                readOnly: true,
                textAlign: TextAlign.right,
                style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                decoration: const InputDecoration(border: InputBorder.none),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextField(
                controller: screen,
                readOnly: true,
                textAlign: TextAlign.right,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 80,
                    fontWeight: FontWeight.bold),
                decoration: const InputDecoration(
                  hintText: "0",
                  hintStyle: TextStyle(color: Colors.white),
                  border: InputBorder.none,
                ),
              ),
            ),

            const SizedBox(height: 20),

            buildRow([
              btn("AC", clearAll, Colors.grey, Colors.black),
              btn("+/-", toggleSign, Colors.grey, Colors.black),
              btn("%", () => Operator('%'), Colors.grey, Colors.black),
              btn("÷", () => Operator("/"), Colors.orangeAccent),
            ]),

            buildRow([
              btn("7", () => addNumber("7")),
              btn("8", () => addNumber("8")),
              btn("9", () => addNumber("9")),
              btn("x", () => Operator("X"), Colors.orangeAccent),
            ]),

            buildRow([
              btn("4", () => addNumber("4")),
              btn("5", () => addNumber("5")),
              btn("6", () => addNumber("6")),
              btn("-", () => Operator("-"), Colors.orangeAccent),
            ]),

            buildRow([
              btn("1", () => addNumber("1")),
              btn("2", () => addNumber("2")),
              btn("3", () => addNumber("3")),
              btn("+", () => Operator("+"), Colors.orangeAccent),
            ]),

            buildRow([
              wideBtn("0", () => addNumber("0")),
              btn(".", addPoint),
              btn("=", calculate, Colors.orangeAccent),
            ]),
          ],
        ),
      ),
    );
  }

  // ---------------- HELPERS ----------------
  Widget buildRow(List<Widget> list) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: list),
    );
  }

  Widget btn(String text, VoidCallback onTap,
      [Color bg = const Color(0xFF2E2E2E),
      Color fg = Colors.white]) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: 40,
        backgroundColor: bg,
        child: Text(text, style: TextStyle(fontSize: 30, color: fg)),
      ),
    );
  }

  Widget wideBtn(String text, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 199,
        height: 80,
        decoration: BoxDecoration(
          color: const Color(0xFF2E2E2E),
          borderRadius: BorderRadius.circular(40),
        ),
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 30),
        child:
            Text(text, style: const TextStyle(fontSize: 30, color: Colors.white)),
      ),
    );
  }
}
