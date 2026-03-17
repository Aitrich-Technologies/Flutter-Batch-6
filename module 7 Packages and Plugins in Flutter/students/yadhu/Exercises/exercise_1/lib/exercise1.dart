import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Exercise1 extends StatefulWidget {
  const Exercise1({super.key});

  @override
  State<Exercise1> createState() => _Exercise1State();
}

class _Exercise1State extends State<Exercise1> {
  List <Color> colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
  ];
   TextStyle colorizeTextStyle = TextStyle(
    fontSize: 30,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Animated"),
        centerTitle: true,
      ),
      body: SingleChildScrollView (
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
             width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              child: Center(
                child: AnimatedTextKit(
                  repeatForever: true,  
                  animatedTexts: [
                    ColorizeAnimatedText("Cat", textStyle: colorizeTextStyle, colors: colorizeColors),
                    ColorizeAnimatedText("Dog", textStyle: colorizeTextStyle, colors: colorizeColors),
                    ColorizeAnimatedText("Fish", textStyle: colorizeTextStyle, colors: colorizeColors)
                  ]),
              ),
            ),
            Container(
              height: 150,
              width: double
              .infinity,
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
              child: Center(
                child: AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    RotateAnimatedText("Rabbit",textStyle: colorizeTextStyle),
                    RotateAnimatedText("Snake",textStyle: colorizeTextStyle),
                    RotateAnimatedText("Hamster",textStyle: colorizeTextStyle),
                  ]
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Center(
                child: AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    ScaleAnimatedText("Camel",textStyle: TextStyle(fontSize: 40)),
                    ScaleAnimatedText("Cow",textStyle: TextStyle(fontSize: 40)),
                    ScaleAnimatedText("Goat",textStyle: TextStyle(fontSize: 40)),
                  ]
                ),
              ),
            ),
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.brown,
              ),
              child: Center(
                child: AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    FadeAnimatedText("White molly",textStyle: TextStyle(fontSize: 32)),
                    FadeAnimatedText("Black molly",textStyle: TextStyle(fontSize: 32)),
                    FadeAnimatedText("Guppy",textStyle: TextStyle(fontSize: 32)),
                  ]
                ),
              ),
            ),
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              child: Center(
                child: AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    TyperAnimatedText("Persian Cat",textStyle: TextStyle(fontSize: 20)),
                    TyperAnimatedText("Calico",textStyle: TextStyle(fontSize: 20)),
                    TyperAnimatedText("Siberian Cat",textStyle: TextStyle(fontSize: 20)),
                    TyperAnimatedText("American curl",textStyle: TextStyle(fontSize: 20)),
                  ]
                ),
              ),
            )
          ]
        ),
      ),
    );
  }
}