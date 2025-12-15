import 'package:flutter/material.dart';
class Bottomsheett extends StatefulWidget {
  const Bottomsheett({super.key});
  @override
  State<Bottomsheett> createState() => _BottomsheettState();
}
class _BottomsheettState extends State<Bottomsheett> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('showModelBottomSheet'),
        onPressed: (){
          showBottomSheet(
            context: context, 
            builder: (BuildContext){
              return Container(
                height: 200,
                color: Colors.yellow,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Model Bottom Sheet'),
                      ElevatedButton(
                        onPressed: (){ 
                          Navigator.pop(context);
                         },
                        child: Text('Close BottomSheet'))
                    ],
                  ),
                ),
              );
            });},
      ),
    );
  }}