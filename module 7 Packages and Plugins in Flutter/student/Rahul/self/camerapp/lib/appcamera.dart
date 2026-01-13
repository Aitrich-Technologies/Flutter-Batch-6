import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class ApppPermissions extends StatefulWidget {
  const ApppPermissions({super.key});

  @override
  State<ApppPermissions> createState() => _ApppPermissionsState();
}

class _ApppPermissionsState extends State<ApppPermissions> {

  final ImagePicker _picker = ImagePicker();
  XFile? _imageFile;

  Future<void> _requestCameraPermissionAndPickImage() async {
    var status = await Permission.camera.status;

    if (!status.isGranted) {
      status = await Permission.camera.request();

      if (!status.isGranted) {
        openAppSettings();
        return;
      }
    }

    try {
      final XFile? pickedFile =
          await _picker.pickImage(source: ImageSource.camera);

      if (pickedFile != null) {
        setState(() {
          _imageFile = pickedFile;
        });
      }
    } catch (e) {
      debugPrint("Error picking image: $e");
    }
  }

  Future<bool> requestGalleryPermission() async {
  if (Platform.isAndroid) {
    final AndroidDeviceInfo deviceInfo = await DeviceInfoPlugin().androidInfo;
    final int sdkInt = deviceInfo.version.sdkInt;

    PermissionStatus status;
    if (sdkInt >= 33) {
      // Android 13+
      status = await Permission.photos.request();
    } else {
      // Android 12 and below
      status = await Permission.storage.request();
    }

    if (status.isGranted) {
      return true;
    } else if (status.isPermanentlyDenied) {
      // Guide user to app settings if permanently denied
      openAppSettings();
      return false;
    } else {
      return false;
    }
  }
  // Handle iOS or other platforms if needed
  return false;
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text(
          "Allow Access",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            _imageFile != null
                ? Image.file(
                    File(_imageFile!.path),
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover,
                  )
                : const Text("No image selected"),

            const SizedBox(height: 20),

            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.white,
              child: IconButton(
                icon: const Icon(
                  Icons.camera_alt,
                  size: 40,
                  color: Colors.deepOrange,
                ),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return SizedBox(
                        height: 150,
                        child: Center(
                          child: Column(
                            children: [
                              ElevatedButton(
                                onPressed: () async {
                                  Navigator.pop(context); // close sheet
                                  await _requestCameraPermissionAndPickImage();
                                },
                                child: const Text("Use Camera"),
                              ),
                              ElevatedButton(
                                onPressed: () async {
                                  Navigator.pop(context); 
                                  await requestGalleryPermission();
                                },
                                child: const Text("Use Gallery"),
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
          ],
        ),
      ),
    );
  }
}
