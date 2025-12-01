import 'package:flutter/material.dart';

class Bsheet extends StatefulWidget {
  const Bsheet({super.key});

  @override
  State<Bsheet> createState() => _BsheetState();
}

class _BsheetState extends State<Bsheet> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
         
        child: Text('Show'),
        onPressed: (){
          showModalBottomSheet(
            context: context, 
            builder: (BuildContext){
              return Container(
                height: 200,
                color: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Model'),
                      ElevatedButton(onPressed: () => Navigator.pop(context),
                      child: Text('close'))
                    ],
                  ),
                ),
              );
            }
            );
        },
      ),
    );
  }
}