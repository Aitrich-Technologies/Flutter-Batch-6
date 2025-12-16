import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: aaa(),
  ));
}

class aaa extends StatefulWidget {
  const aaa({super.key});
  @override
  State<aaa> createState() => CalculatorState();
}

class CalculatorState extends State<aaa> {
  TextEditingController screen = TextEditingController();
  TextEditingController screenone = TextEditingController();

  String firstNumber = "";
  String operator = "";
  bool shouldResetScreen = false; // Flag to track when to clear the screen for a new number

  @override
  void initState() {
    super.initState();
    screen.text = "0"; // Initialize with 0
  }

  void addNumber(String num) {
    setState(() {
      if (shouldResetScreen) {
        // If we just hit an operator, replace the screen with the new number
        screen.text = num;
        shouldResetScreen = false;
      } else {
        // Otherwise append to the existing number
        if (screen.text == "0") {
          screen.text = num;
        } else {
          screen.text += num;
        }
      }
    });
  }

  void clearAll() {
    setState(() {
      screen.text = "0";
      screenone.text = "";
      firstNumber = "";
      operator = "";
      shouldResetScreen = false;
    });
  }

  // Logic for +/- button
  void toggleSign() {
    setState(() {
      double value = double.tryParse(screen.text) ?? 0;
      if (value != 0) {
        value = value * -1;
        // Format to remove decimal if whole number
        if (value % 1 == 0) {
          screen.text = value.toInt().toString();
        } else {
          screen.text = value.toString();
        }
      }
    });
  }

  void Operator(String op) {
    setState(() {
      firstNumber = screen.text;     // store first number
      operator = op;                 // store operator
      
      // Update the top controller to show "Number Operator"
      screenone.text = "$firstNumber $operator"; 
      
      // Instead of clearing to 0 immediately, we set a flag.
      // The screen keeps showing firstNumber until the user types the next digit.
      shouldResetScreen = true;
    });
  }

  void calculate() {
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
      if (num2 != 0) {
        result = num1 / num2;
      } else {
        result = 0; // Prevent divide by zero error
      }
    } else if (operator == "%") {
      result = num1 * (num2 / 100);
    }

    setState(() {
      // Show the full equation on top: "10 + 5 ="
      screenone.text = "$firstNumber $operator ${screen.text} =";
      
      // Show result on bottom. 
      if (result % 1 == 0) {
        screen.text = result.toInt().toString();
      } else {
        screen.text = result.toString();
      }
      // Allow starting a new calculation immediately after result
      shouldResetScreen = true; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            // Top Screen (History/First Number)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                controller: screenone,
                readOnly: true,
                textAlign: TextAlign.right,
                style: const TextStyle(
                    color: Colors.grey, 
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(5.0),
                ),
              ),
            ),
            
            // Bottom Screen (Current Input)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                controller: screen,
                readOnly: true,
                textAlign: TextAlign.right,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 60.0,
                    fontWeight: FontWeight.bold),
                decoration: const InputDecoration(
                  hintText: '0',
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(16.0),
                ),
              ),
            ),
            const SizedBox(height: 30),
            
            // Buttons
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: clearAll, 
                        child: const CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.grey,
                          child: Center(
                            child: Text("AC", style: TextStyle(fontSize: 30, color: Colors.black)),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: toggleSign, // Added +/- functionality
                        child: const CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.grey,
                          child: Center(
                            child: Text("+/-", style: TextStyle(fontSize: 30, color: Colors.black)),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Operator('%'),
                        child: const CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.grey,
                          child: Center(
                            child: Text("%", style: TextStyle(fontSize: 30, color: Colors.black)),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Operator("/"),
                        child: const CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.orangeAccent,
                          child: Center(
                            child: Text("÷", style: TextStyle(fontSize: 30, color: Colors.white)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () => addNumber("7"), 
                        child: const CircleAvatar(
                          radius: 40,
                          backgroundColor: Color.fromARGB(255, 102, 102, 102),
                          child: Center(
                            child: Text("7", style: TextStyle(fontSize: 30, color: Colors.white)),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => addNumber("8"),
                        child: const CircleAvatar(
                          radius: 40,
                          backgroundColor: Color.fromARGB(255, 102, 102, 102),
                          child: Center(
                            child: Text("8", style: TextStyle(fontSize: 30, color: Colors.white)),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => addNumber("9"),
                        child: const CircleAvatar(
                          radius: 40,
                          backgroundColor: Color.fromARGB(255, 102, 102, 102),
                          child: Center(
                            child: Text("9", style: TextStyle(fontSize: 30, color: Colors.white)),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Operator("X"),
                        child: const CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.orangeAccent,
                          child: Center(
                            child: Text("x", style: TextStyle(fontSize: 30, color: Colors.white)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () => addNumber("4"),
                        child: const CircleAvatar(
                          radius: 40,
                          backgroundColor: Color.fromARGB(255, 102, 102, 102),
                          child: Center(
                            child: Text("4", style: TextStyle(fontSize: 30, color: Colors.white)),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => addNumber("5"),
                        child: const CircleAvatar(
                          radius: 40,
                          backgroundColor: Color.fromARGB(255, 102, 102, 102),
                          child: Center(
                            child: Text("5", style: TextStyle(fontSize: 30, color: Colors.white)),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => addNumber("6"),
                        child: const CircleAvatar(
                          radius: 40,
                          backgroundColor: Color.fromARGB(255, 102, 102, 102),
                          child: Center(
                            child: Text("6", style: TextStyle(fontSize: 30, color: Colors.white)),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Operator("-"),
                        child: const CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.orangeAccent,
                          child: Center(
                            child: Text("-", style: TextStyle(fontSize: 30, color: Colors.white)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () => addNumber("1"),
                        child: const CircleAvatar(
                          radius: 40,
                          backgroundColor: Color.fromARGB(255, 102, 102, 102),
                          child: Center(
                            child: Text("1", style: TextStyle(fontSize: 30, color: Colors.white)),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => addNumber("2"),
                        child: const CircleAvatar(
                          radius: 40,
                          backgroundColor: Color.fromARGB(255, 102, 102, 102),
                          child: Center(
                            child: Text("2", style: TextStyle(fontSize: 30, color: Colors.white)),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => addNumber("3"),
                        child: const CircleAvatar(
                          radius: 40,
                          backgroundColor: Color.fromARGB(255, 102, 102, 102),
                          child: Center(
                            child: Text("3", style: TextStyle(fontSize: 30, color: Colors.white)),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Operator("+"),
                        child: const CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.orangeAccent,
                          child: Center(
                            child: Text("+", style: TextStyle(fontSize: 30, color: Colors.white)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () => addNumber("0"),
                        child: Container(
                          width: 170, 
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: const Color.fromARGB(255, 102, 102, 102),
                          ),
                          child: const Center(
                            child: Row(
                              children: [
                                SizedBox(width: 30),
                                Text("0", style: TextStyle(fontSize: 30, color: Colors.white)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => addNumber("."),
                        child: const CircleAvatar(
                          radius: 40,
                          backgroundColor: Color.fromARGB(255, 102, 102, 102),
                          child: Center(
                            child: Text(".", style: TextStyle(fontSize: 30, color: Colors.white)),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => calculate(),
                        child: const CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.orangeAccent,
                          child: Center(
                            child: Text("=", style: TextStyle(fontSize: 30, color: Colors.white)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}