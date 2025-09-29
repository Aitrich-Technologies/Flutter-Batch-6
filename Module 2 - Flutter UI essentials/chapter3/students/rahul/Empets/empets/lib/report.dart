import 'package:empets/home.dart';
import 'package:flutter/material.dart';

class Report extends StatefulWidget {
  const Report({super.key});

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  bool ischecked = false;
  bool ischecke = false;
  bool ischeck = false;
  bool ischec = false;
  bool ische = false;
  bool isch = false;

  // ✅ helper widget to avoid repeating Row code
  Widget buildCheckBox(String text, bool value, Function(bool) onChanged) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: (bool? val) => onChanged(val ?? false),
        ),
        Text(text, style: const TextStyle(fontSize: 16)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAF6FF),
      appBar: AppBar(
        title: const Text("Report Page"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Container(
          width: 350,
          height: 500, // fixed box height
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                blurRadius: 10,
                offset: Offset(4, 4),
              )
            ],
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
          ),
          child: SingleChildScrollView( // ✅ makes content scrollable inside
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Text(
                    'Report',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Divider(thickness: 1, color: Colors.black),

                // ✅ use helper method
                buildCheckBox("Spam / Irrelevant", ischecked,
                    (val) => setState(() => ischecked = val)),
                const Divider(thickness: 1, color: Colors.black),

                buildCheckBox("Fake Information", ischecke,
                    (val) => setState(() => ischecke = val)),
                const Divider(thickness: 1, color: Colors.black),

                buildCheckBox("Offensive Language", ischeck,
                    (val) => setState(() => ischeck = val)),
                const Divider(thickness: 1, color: Colors.black),

                buildCheckBox("Animal Abuse", ischec,
                    (val) => setState(() => ischec = val)),
                const Divider(thickness: 1, color: Colors.black),

                buildCheckBox("Wrong Category", ische,
                    (val) => setState(() => ische = val)),
                const Divider(thickness: 1, color: Colors.black),

                buildCheckBox("Other", isch,
                    (val) => setState(() => isch = val)),
                const Divider(thickness: 1, color: Colors.black),
                
Row(mainAxisAlignment: MainAxisAlignment.center, children: [ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                  textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  elevation: 10,
                ),
                onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>sub()));
              }, child: Text('Submit')),],)
            

                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class sub extends StatelessWidget {
  const sub({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('your report has been submited'),
          ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                  textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  elevation: 10,
                ),
                onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Mainpage()));
              }, child: Text('back')),
          
        ],)
      ),
    );
  }
}
