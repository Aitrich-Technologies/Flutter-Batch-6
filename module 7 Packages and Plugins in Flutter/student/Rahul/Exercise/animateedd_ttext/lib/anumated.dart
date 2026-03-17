import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
class AnimattedText extends StatefulWidget {
  const AnimattedText({super.key});
  @override
  State<AnimattedText> createState() => _AnimattedTextState();
}
class _AnimattedTextState extends State<AnimattedText> {
  List <Color > colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
  ];
  static TextStyle colorizeTextStyle= TextStyle(
  fontSize: 50.0,
  fontFamily: 'Horizon',
);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animals",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              width: 600,
              decoration: BoxDecoration(
                color: Colors.indigoAccent
              ),
              child: Center(
                child: AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    ColorizeAnimatedText('Cat', textStyle: colorizeTextStyle, colors: colorizeColors),
                    ColorizeAnimatedText('Dog', textStyle: colorizeTextStyle, colors: colorizeColors),
                    ColorizeAnimatedText('Fish', textStyle: colorizeTextStyle, colors: colorizeColors)
                  ]
                ),
              ),
            ),
            Container(
              height: 150,
              width: 600,
              decoration: BoxDecoration(
                color: Colors.orangeAccent
              ),
              child: Center(
                child: AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    RotateAnimatedText('Rabit',textStyle: TextStyle(fontSize: 30,color: Colors.white)),
                    RotateAnimatedText('Snake',textStyle: TextStyle(fontSize: 30,color: Colors.white)),
                    RotateAnimatedText('Hamster',textStyle: TextStyle(fontSize: 30,color: Colors.white)),
                  ]
                ),
              ),
            ),
            Container(
              height: 150,
              width: 600,
              decoration: BoxDecoration(
                color: Colors.blue
              ),
              child: Center(
                child: DefaultTextStyle(
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white
                  ), 
                  child: AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      ScaleAnimatedText('Camel'),
                      ScaleAnimatedText('Cow'),
                      ScaleAnimatedText('Goat'),
                    ],
                  )
                ),
              ),
            ),
            Container(
              width: 600,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.brown
              ),
              child: Center(
                child: DefaultTextStyle(
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ), 
                  child: AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      FadeAnimatedText("White molly"),
                      FadeAnimatedText('Black molly'),
                      FadeAnimatedText('Guppy'),

                    ],
                  )
                ),
              ),
            ),
            Container(
              width: 600,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.blueGrey
              ),
              child: Center(
                child: DefaultTextStyle(
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ), 
                  child: AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      TyperAnimatedText('Calico'),
                      TyperAnimatedText('Siberian Cat'),
                      TyperAnimatedText('American curl'),
                    ]
                  )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}