import 'package:flutter/material.dart';
class Calculator extends StatefulWidget {
  const Calculator({super.key});
  @override
  State<Calculator> createState() => CalculatorState();
}
class CalculatorState extends State<Calculator> {

  TextEditingController screen = TextEditingController();
  TextEditingController screenone =TextEditingController();

  String firstNumber = "";
  String operator = "";
  bool shouldResetScreen =false; 
  bool isCalculated = false;
  

  void addNumber(String num) {
    setState(() {
      // if (shouldResetScreen){
      // screen.text = num;
      // shouldResetScreen=false;
      // }
      // else{
      //   screen.text += num;
      // }
      String current = screen.text;
    if (shouldResetScreen) {
      screen.text = num;
      shouldResetScreen = false;
      return;
    }
    if (current == "0") {
      if (num == "0") {
        return; 
      } else {
        screen.text = num; 
        return;
      }
    }
    if (current.contains(".")) {
      screen.text += num;
      return;
    }
    screen.text += num;
    });
  }

  void addPoint() {
  setState(() {
    String current = screen.text;

    if (shouldResetScreen) {
      screen.text = "0.";
      shouldResetScreen = false;
      return;
    }

    if (!current.contains(".")) {
      screen.text += ".";
    }
  });
}

  void clearAll(){
    setState(() {
      screen.text ="";
      screenone.text="";
      firstNumber="";
      operator ="";
      shouldResetScreen=false;
    });
  }

  void toggleSign(){
    setState(() {
      double value =double.tryParse(screen.text) ?? 0;
      if (value !=0){
        value =value * -1;
        if(value % 1 == 0){
          screen.text=value.toInt().toString();
        }else{
          screen.text=value.toString();
        }
      }
    });
  }

  void Operator(String op) {
    setState(() {
      firstNumber = screen.text;     
      operator = op;                 
      screenone.text="$firstNumber $operator";
      shouldResetScreen=true; 
      isCalculated = false;
    });
    }

  void calculate() {
    if (isCalculated) return;
      double num1 = double.tryParse(firstNumber) ?? 0;
    double num2 = double.tryParse(screen.text) ?? 0;
    double result = 0;
    if (operator == "+") {
      result = num1 + num2;
      
    }
    else if(operator =="-"){
      result = num1 - num2;
      
    }
    
    else if(operator =="X"){
      result =num1 * num2;
    }
    else if(operator =="/"){
      if(num2 !=0){
        result =num1 / num2;
      }
      else{
        result=0;
      }
    }
    else if(operator =="%"){
      result =num1 /100;
    }
    setState(() {
      if(operator=="%"){
        screenone.text = "$firstNumber $operator";
        if(result % 1==0){
          screen.text =result.toInt().toString();
         }
        else{
         screen.text=result.toString();
        }
      }
      else{
        screenone.text = "$firstNumber $operator ${screen.text} ";
        if(result % 1==0){
         screen.text =result.toInt().toString();
        }
        else{
         screen.text=result.toString();
        }
      } 
      isCalculated=true;
      shouldResetScreen =true;
      
    });
    
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(padding: EdgeInsetsGeometry.all(10),
        child: Column(
          children: [
            SizedBox(height: 30),
            Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 50),
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
            SizedBox(height: 5),
            Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 50),
              child: TextField(
                controller: screen,
                readOnly: true,
                textAlign: TextAlign.right, 
                style: const TextStyle(
                  color: Colors.white,fontSize: 80.0,
                  fontWeight: FontWeight.bold),
                decoration: const InputDecoration(
                  hintText: '0',
                   hintStyle: TextStyle(color: Colors.white), 
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(5.0),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: clearAll,
                  child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.grey,
                  child: Center(
                    child: Text("AC",
                    style: TextStyle(
                      fontSize: 30,color: Colors.black
                      ),
                    ),
                  ),
                ),
                ),
                GestureDetector(
                  onTap: toggleSign,
                  child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.grey,
                  child: Center(
                    child: Text( "+/-",
                      style: TextStyle(
                        fontSize: 30,color: Colors.black
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => Operator('%'),
                  child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.grey,
                  child: Center(
                    child: Text("%",style: TextStyle(fontSize: 30,color: Colors.black),),
                  ),
                ),
                ),
                GestureDetector(
                  onTap: () => Operator("/"),
                  child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.orangeAccent,
                  child: Center(
                    child: Text("÷",style: TextStyle(fontSize: 30,color: Colors.white),),
                  ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () => addNumber("7"),
                  child: CircleAvatar(
                  radius: 40,
                  backgroundColor: const Color.fromARGB(255, 46, 46, 46),
                  child: Center(
                    child: Text("7",style: TextStyle(fontSize: 30,color: Colors.white),),
                  ),
                ),
                ),
                GestureDetector(
                  onTap: () => addNumber("8"),
                  child: CircleAvatar(
                  radius: 40,
                  backgroundColor: const Color.fromARGB(255, 46, 46, 46),
                  child: Center(
                    child: Text("8",style: TextStyle(fontSize: 30,color: Colors.white),),
                  ),
                ),
                ),
                GestureDetector(
                  onTap: () => addNumber("9"),
                  child: CircleAvatar(
                  radius: 40,
                  backgroundColor: const Color.fromARGB(255, 46, 46, 46),
                  child: Center(
                    child: Text("9",style: TextStyle(fontSize: 30,color: Colors.white),),
                  ),
                ),
                ),
                GestureDetector(
                  onTap: () => Operator("X"),
                  child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.orangeAccent,
                  child: Center(
                    child: Text("x",style: TextStyle(fontSize: 30,color: Colors.white),),
                  ),
                ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () => addNumber("4"),
                  child: CircleAvatar(
                  radius: 40,
                  backgroundColor: const Color.fromARGB(255, 46, 46, 46),
                  child: Center(
                    child: Text("4",style: TextStyle(fontSize: 30,color: Colors.white),),
                  ),
                ),
                ),
                GestureDetector(
                  onTap: () => addNumber("5"),
                  child: CircleAvatar(
                  radius: 40,
                  backgroundColor: const Color.fromARGB(255, 46, 46, 46),
                  child: Center(
                    child: Text("5",style: TextStyle(fontSize: 30,color: Colors.white),),
                  ),
                ),
                ),
                GestureDetector(
                  onTap: () => addNumber("6"),
                  child: CircleAvatar(
                  radius: 40,
                  backgroundColor: const Color.fromARGB(255, 46, 46, 46),
                  child: Center(
                    child: Text("6",style: TextStyle(fontSize: 30,color: Colors.white),),
                  ),
                ),
                ),
                GestureDetector(
                  onTap: () => Operator("-"),
                  child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.orangeAccent,
                  child: Center(
                    child: Text("-",style: TextStyle(fontSize: 30,color: Colors.white),),
                  ),
                ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () => addNumber("1"),
                  child: CircleAvatar(
                  radius: 40,
                  backgroundColor: const Color.fromARGB(255, 46, 46, 46),
                  child: Center(
                    child: Text("1",style: TextStyle(fontSize: 30,color: Colors.white),),
                  ),
                ),
                ),
                GestureDetector(
                  onTap: () => addNumber("2"),
                  child: CircleAvatar(
                  radius: 40,
                  backgroundColor: const Color.fromARGB(255, 46, 46, 46),
                  child: Center(
                    child: Text("2",style: TextStyle(fontSize: 30,color: Colors.white),),
                  ),
                ),
                ),
                GestureDetector(
                  onTap: () => addNumber("3"),
                  child: CircleAvatar(
                  radius: 40,
                  backgroundColor: const Color.fromARGB(255, 46, 46, 46),
                  child: Center(
                    child: Text("3",style: TextStyle(fontSize: 30,color: Colors.white),),
                  ),
                ),
                ),
                GestureDetector(
                  onTap: () => Operator("+"),
                  child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.orangeAccent,
                  child: Center(
                    child: Text("+",style: TextStyle(fontSize: 30,color: Colors.white),),
                  ),
                ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () => addNumber("0"),
                  child: Container(
                  width: 199,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Color.fromARGB(255, 46, 46, 46),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        SizedBox(width: 30),
                        Text("0",style: TextStyle(fontSize: 30,color: Colors.white),),
                      ],
                    ),
                  ),
                  ),
                ),
                GestureDetector(
                  onTap: () => addPoint(),
                  child: CircleAvatar(
                  radius: 40,
                  backgroundColor: const Color.fromARGB(255, 46, 46, 46),
                  child: Center(
                    child: Text(".",style: TextStyle(fontSize: 30,color: Colors.white),),
                  ),
                ),
                ),
                GestureDetector(
                  onTap: () => calculate(),
                  child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.orangeAccent,
                  child: Center(
                    child: Text("=",style: TextStyle(fontSize: 30,color: Colors.white),),
                   ),
                 ),
               ),
             ],
           ),
         ],
       ),
      ),
    );
  }
}