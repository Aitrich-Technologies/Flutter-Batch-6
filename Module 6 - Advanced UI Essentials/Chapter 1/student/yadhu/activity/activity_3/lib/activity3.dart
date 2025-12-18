// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
class Activity3 extends StatefulWidget
{
  const Activity3({super.key});
  @override
  State<Activity3> createState() => _Activity3State();
}

class _Activity3State extends State<Activity3>
{
  Widget CalcButton(String btntxt,Color btncolor,Color txtcolor)
  {
    return SizedBox(
      height: 80,
      width: 90,
      child: ElevatedButton(
        onPressed: ()
        {
          calculation(btntxt);
        },
        style: ElevatedButton.styleFrom(
        backgroundColor: btncolor,
        shape: CircleBorder(),
        padding: EdgeInsets.all(22),
        ),
        child: Text(btntxt,
        style: TextStyle(fontSize:30,color: txtcolor,
        fontWeight: FontWeight.bold)
      ),
    ),
  );
}

@override
Widget build(BuildContext context)
{
  return Scaffold(
    backgroundColor: Colors.black,
    body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    reverse: true,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Text(historytext,
                        textAlign: TextAlign.end,
                        style: TextStyle(color: Colors.white60,fontSize: 40)
                      ),
                    ),
                  ),
                )
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    reverse: true,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(text,
                      textAlign: TextAlign.right,
                      style: TextStyle(color: Colors.white,fontSize: 100)
                      )
                    ),
                  ),
                )
              ],
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton("AC", Colors.grey, Colors.black,),
                CalcButton("+/-", Colors.grey,Colors.black,),
                CalcButton("%", Colors.grey, Colors.black,),
                CalcButton("÷", Colors.orangeAccent, Colors.white,),
              ],
            ),

            SizedBox(height: 20), 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton("7",  const Color.fromARGB(255, 44, 44, 44), Colors.white,),
                CalcButton("8",  const Color.fromARGB(255, 44, 44, 44), Colors.white,),
                CalcButton("9",  const Color.fromARGB(255, 44, 44, 44), Colors.white,),
                CalcButton("x", Colors.orangeAccent, Colors.white,),
              ],
            ),

            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton("4", const Color.fromARGB(255, 44, 44, 44), Colors.white,),
                CalcButton("5", const Color.fromARGB(255, 44, 44, 44), Colors.white,),
                CalcButton("6", const Color.fromARGB(255, 44, 44, 44), Colors.white,),
                CalcButton("-", Colors.orangeAccent, Colors.white,),
              ],
            ),

            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton("1",  const Color.fromARGB(255, 44, 44, 44), Colors.white,),
                CalcButton("2",  const Color.fromARGB(255, 44, 44, 44), Colors.white,),
                CalcButton("3",  const Color.fromARGB(255, 44, 44, 44), Colors.white,),
                CalcButton("+", Colors.orangeAccent, Colors.white,),
              ],
            ),
            
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              SizedBox(
                width: 200,
                height: 70,
                child: ElevatedButton(onPressed: ()
                {
                  calculation("0");
                },
                style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 44, 44, 44), 
                ),
                child: Row(
                  children: [
                    Text("0",style: TextStyle(color: Colors.white,fontSize: 40)),
                  ],
                )),
              ),
              CalcButton(".",  const Color.fromARGB(255, 44, 44, 44), Colors.white,),
              CalcButton("=", Colors.orangeAccent, Colors.white,),
            ],
          ),
          SizedBox(height: 25)
        ],
      )
    ),
  );
}
  

  // ----- State Variables ----- //
  String text = "0";
  String historytext = "";
  double num1 = 0;
  double num2 = 0;

  String result = "";
  String finalresult = "";
  String opr = "";
  String preopr = "";

  
  // ----- Calculation function ----- //
  void calculation(btntxt)
  {
    try
    {
      // ----- Reset ----- //
      if(btntxt == "AC") {
        text = "0";
        historytext = "";
        num1 = 0;
        num2 = 0;
        result = "";
        finalresult = "0";
        opr = "";
        preopr = "";
      }

      // ----- Operator Pressed ----- //
      else if(btntxt == "+" || btntxt == "-" || btntxt == "x" || btntxt == "÷" || btntxt == "=")
      {
        if (result != "")
        {
          if (opr == "")
          {
            num1 = double.parse(result);
          }
          else
          {
            num2 = double.parse(result);
          }
        }
        
        if (opr == "+") finalresult = add();
        if (opr == "-") finalresult = sub();
        if (opr == "x") finalresult = mult();
        if (opr == "÷") finalresult = div();
        if (opr == "%") finalresult = Percentage();
  
        if(btntxt != "=")
        {
          opr = (btntxt == "x") ? "*" : btntxt;
          historytext = "${clearnum(num1)} $opr ";
        }
        else
        {
          historytext = "";
          opr = "";
        }
        result = "";
      }

      // ----- Percentage ----- //
      else if (btntxt == "%") 
      {
        opr = "%";
        num1 = double.tryParse(result)!;
        historytext = "${clearnum(num1)}%";
        result = "";
      }

      // ----- Decimal ----- //
      else if (btntxt == ".")
      {
        if (!result.contains("."))
        {
          result = (result == "") ? "0." : "$result.";
          historytext = "$historytext.";
        }
        finalresult = result;
      }

      // ----- +/- Sign ----- //
      else if (btntxt == "+/-")
      {
        if (result.startsWith("-"))
        {
          result = result.substring(1);
        }
        else
        {
          result = "-$result";
        }
        finalresult = result;
      }

      // ----- Number Pressed ----- //
      else
      {
        if (btntxt == "0" && result == "0" && !result.contains("."))
        {
          return;
        }
        if (result == "0")
        {
          result = btntxt;
        }
        else
        {
          result += btntxt;
        }
        finalresult = result;
        historytext += btntxt;
      }
      setState(()
      {
        text = clearnum(double.tryParse(finalresult) ?? 0);
      });
    }
    catch (e)
    {
      setState(()
      {
        historytext = "";
        text = "Error";
      });
    }
  }

  // ----- Math function ----- //
  String add()
  {
    num1 = num1 + num2;
    return clearnum(num1);
  }

  String sub()
  {
    num1 = num1 - num2;
    return clearnum(num1);
  }

  String mult()
  {
    num1 = num1 * num2;
    return clearnum(num1);
  }

  String div()
  {
    num1 = num1 / num2;
    return clearnum(num1);
  }

  String clearnum(num value)
  {
    if(value % 1 == 0)
    {
      return value.toInt().toString();
    }
    return value.toString();
  }
  String Percentage()
  {
    num1 = num1 / 100;
    return clearnum(num1);
  }
}
