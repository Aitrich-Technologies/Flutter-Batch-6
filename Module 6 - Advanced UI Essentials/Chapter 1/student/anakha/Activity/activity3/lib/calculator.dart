import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  
  String display = "0";
  double num1 = 0;
  String operator ="";
  bool shouldClear = false;
  String history = "";
  bool isResultShown = false;

  void onButtonPress(String value) {
  setState(() {
    if (value == "AC") {
      display = "0";
      num1 = 0;
      operator = "";
      history = "";
      shouldClear = false;
    }
    else if (value == "+/-") {
      display = display.startsWith("-")
          ? display.substring(1)
          : "-$display";
    }
  else if (value == "%") {
  num1 = double.parse(display);
  operator = "%";
  history = "$display %";
  shouldClear = true;
  isResultShown = false;
}
else if (value == "+" || value == "-" || value == "x" || value == "÷") {
  if (display == "0" && history.isEmpty) {
    operator = value;
    history = value;
    shouldClear = true;
    isResultShown = false;
  } else {
    num1 = double.parse(display);
    operator = value;
    history = "$display $operator";
    shouldClear = true;
    isResultShown = false;
  }
}
else if (value == "%") {
  if (display == "0" && history.isEmpty) {
    operator = "%";
    history = "%";
    shouldClear = true;
    isResultShown = false;
  } else {
    num1 = double.parse(display);
    operator = "%";
    history = "$display %";
    shouldClear = true;
    isResultShown = false;
  }
}
else if (value == "=") {
  history = history.trim();
  double result = 0;
  if (operator == "%") {
    result = num1 / 100; 
  } else {
    double num2 = double.parse(display);
    history = "$history $display";
    switch (operator) {
      case "+":
        result = num1 + num2;
        break;
      case "-":
        result = num1 - num2;
        break;
      case "x":
        result = num1 * num2;
        break;
      case "÷":
        result = num2 != 0 ? num1 / num2 : 0;
        break;
    }
  }
  display = result.toString();
  isResultShown = true;
  shouldClear = true;
}
else {
  if (shouldClear) {
    display = value == "." ? "0." : value;
    shouldClear = false;
    isResultShown = false;
  }
  else if (display == "0" && value != ".") {
   
    display = value;
  }
  else if (value == "." && !display.contains(".")) {
    display += ".";
  }
  else if (value != ".") {
    display += value;
  }
}
}
);
}

   Widget calcButton(String text,
   {Color bgColor=const Color(0xFF333333),
   Color textColor = Colors.white,
   double width=75,
   double fontsize =20}){
    return SizedBox(
      width: width,
      height: 75,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40)
          )
        ),
        onPressed: ()=>onButtonPress(text), 
        child: Text(text,style: TextStyle(fontSize: fontsize,color: textColor),)),
    );
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded (
              child: Container(
                width: double.infinity, 
                padding:EdgeInsets.all(20),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    history,
                    textAlign: TextAlign.right,
                    style:TextStyle(
                    color: Colors.grey,
                    fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    display,
                    textAlign: TextAlign.right, 
                    style:TextStyle(
                      color: Colors.white,
                      fontSize: 64,
                    ),
                  ),
                ],
               ),
              ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      calcButton("AC",
                      bgColor: Colors.grey,textColor: Colors.black,),
                      calcButton("+/-",
                      bgColor: Colors.grey,textColor: Colors.black),
                      calcButton("%",
                      bgColor: Colors.grey,textColor: Colors.black),
                      calcButton("÷",
                      bgColor: Colors.orange,textColor: Colors.white),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      calcButton("7"),
                      calcButton("8"),
                      calcButton("9"),
                      calcButton("x",bgColor: Colors.orange),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      calcButton("4"),
                      calcButton("5"),
                      calcButton("6"),
                      calcButton("-",bgColor: Colors.orange),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      calcButton("1"),
                      calcButton("2"),
                      calcButton("3"),
                      calcButton("+",bgColor: Colors.orange),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 70,
                        width: 200,
                        child:ElevatedButton(
                          onPressed: () {
                            onButtonPress("0"); 
                              },

                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 44, 44, 44)
                        ),
                        child: Row(
                          children: [
                            Text("0",style: TextStyle(color: Colors.white,fontSize: 28),)
                          ],
                        ),),
                      ),
                      calcButton("."),
                      calcButton("=",bgColor: Colors.orange),
                    ],
                  ),
                  SizedBox(height: 20,),
                ],
              )
            ],
        )
      ),
    );
  }
}