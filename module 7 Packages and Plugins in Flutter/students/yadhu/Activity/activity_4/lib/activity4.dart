import 'package:activity_4/camerascreen.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class Activity4 extends StatefulWidget {
  const Activity4({super.key});

  @override
  State<Activity4> createState() => _Activity4State();
}

class _Activity4State extends State<Activity4> {
 Future<void> requestCameraPermission() async {
  PermissionStatus status = await Permission.camera.request();

  if (status.isGranted) {
    if (!mounted) return;
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Camerascreen()),
    );
  } 
  else if (status.isPermanentlyDenied) {
    await openAppSettings();
  } 
  else {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Camera permission denied")),
    );
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "Permission_handler",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  height: 250,
                  color: Colors.red,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        ListTile(
                          leading: Icon(Icons.camera_alt_outlined,color: Colors.white,),
                          title: Text("Camera",
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          onTap: () async{
                            Navigator.pop(context);
                            await requestCameraPermission();
                          },
                        ),
                        Divider(),
                        ListTile(
                          leading: Icon(Icons.photo_outlined,color: Colors.white,),
                          title: Text("Gallery",
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                          onTap: () {},
                        ),
                        Divider(),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: Text(
            "Permission",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
