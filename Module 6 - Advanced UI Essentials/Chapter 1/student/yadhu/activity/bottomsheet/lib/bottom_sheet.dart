import 'package:flutter/material.dart';
// ignore: camel_case_types
class bottom_sheet extends StatelessWidget {
  const bottom_sheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bottom Sheet",
          style: TextStyle(color: Colors.black, fontSize: 30)),
        backgroundColor: Colors.white),
      body: Center(
        child: ElevatedButton(
          child: Text("ShowModelBottomSheet"),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  height: 200,
                  color: Colors.amber,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      //mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Model BottomSheet"),
                        ElevatedButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("Close BottomSheet"),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
