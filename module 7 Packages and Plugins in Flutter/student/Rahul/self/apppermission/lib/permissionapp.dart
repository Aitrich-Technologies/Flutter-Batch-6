import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class ApppPermissions extends StatefulWidget {
  
  const ApppPermissions({super.key});
 
  @override
  State<ApppPermissions> createState() => AappStatepPermissions();
}


class AappStatepPermissions extends State<ApppPermissions> {
  
  
  Future<void> requestCameraPermission() async {
  var status = await Permission.camera.request();

  if (status.isGranted) {
    openCamera();
  } else if (status.isPermanentlyDenied) {
    openAppSettings();
  }
}
final ImagePicker _picker = ImagePicker();

Future<void> openCamera() async {
  final XFile? image =
      await _picker.pickImage(source: ImageSource.camera);

  if (image != null) {
    print(image.path);
  }
}


Future<void> requestGalleryPermission() async {
  var status = await Permission.photos.request();
  if (status.isGranted) {
    print("Gallery permission granted");
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Allow Access",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: CircleAvatar(
          radius: 40,
          backgroundColor: Colors.white,
          child: IconButton(
            onPressed: (){
              showModalBottomSheet(
                context: context, 
                builder: (BuildContext builderContext){
                  return Container(
                    height: 200,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          ElevatedButton(
                            
                            onPressed: (){
                              requestCameraPermission();
                              
                            }, child: 
                            
                            Text('Use Camera')),

                          ElevatedButton(
                            
                            onPressed: (){
                              requestGalleryPermission();
                            }, 
                              
                            child: Text('Use Phone Gallery '))
                        ],
                      ),
                    ),
                  );
                }
              );
            },
            icon: Icon(Icons.camera_alt,size: 50,color: Colors.deepOrange,)),
        ),
      ),
    );
  }
}

