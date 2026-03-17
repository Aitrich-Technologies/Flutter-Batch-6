// import 'package:flutter/material.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'dart:io';

// import 'package:image_picker/image_picker.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: ApppPermissionss(),
//     );
//   }
// }



// class ApppPermissionss extends StatefulWidget {
//   const ApppPermissionss({super.key});

//   @override
//   State<ApppPermissionss> createState() => _ApppPermissionsState();
// }

// class _ApppPermissionsState extends State<ApppPermissionss> {
//   final ImagePicker _picker = ImagePicker();
//   File? _image;

//   // CAMERA PERMISSION + OPEN CAMERA
//   Future<void> requestCameraPermission() async {
//     final status = await Permission.camera.request();

//     if (status.isGranted) {
//       openCamera();
//     } else if (status.isPermanentlyDenied) {
//       openAppSettings();
//     }
//   }

//   // OPEN CAMERA
//   Future<void> openCamera() async {
//     final XFile? photo =
//         await _picker.pickImage(source: ImageSource.camera);

//     if (photo != null) {
//       setState(() {
//         _image = File(photo.path);
//       });
//     }
//   }

//   // GALLERY PERMISSION + OPEN GALLERY
//   Future<void> requestGalleryPermission() async {
//   Permission permission;

//   if (Platform.isIOS) {
//     permission = Permission.photos;
//   } else {
//     permission = Permission.storage; // Android
//   }

//   final status = await permission.request();

//   if (status.isGranted) {
//     openGallery();
//   } else if (status.isPermanentlyDenied) {
//     openAppSettings();
//   }
// }


//   // OPEN GALLERY
//   Future<void> openGallery() async {
//     final XFile? image =
//         await _picker.pickImage(source: ImageSource.gallery);

//     if (image != null) {
//       setState(() {
//         _image = File(image.path);
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey.shade300,
//       appBar: AppBar(
//         title: const Text(
//           "Allow Access",
//           style: TextStyle(color: Colors.white),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.deepOrange,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             _image != null
//                 ? Image.file(
//                     _image!,
//                     width: 200,
//                     height: 200,
//                     fit: BoxFit.cover,
//                   )
//                 : const Icon(
//                     Icons.image,
//                     size: 150,
//                     color: Colors.grey,
//                   ),
//             const SizedBox(height: 30),
//             CircleAvatar(
//               radius: 40,
//               backgroundColor: Colors.white,
//               child: IconButton(
//                 icon: const Icon(
//                   Icons.camera_alt,
//                   size: 40,
//                   color: Colors.deepOrange,
//                 ),
//                 onPressed: () {
//                   showModalBottomSheet(
//                     context: context,
//                     builder: (context) {
//                       return SizedBox(
//                         height: 180,
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             ElevatedButton(
//                               onPressed: () {
//                                 Navigator.pop(context);
//                                 requestCameraPermission();
//                               },
//                               child: const Text("Use Camera"),
//                             ),
//                             const SizedBox(height: 15),
//                             ElevatedButton(
//                               onPressed: () {
//                                 Navigator.pop(context);
//                                 requestGalleryPermission();
//                               },
//                               child: const Text("Use Phone Gallery"),
//                             ),
//                           ],
//                         ),
//                       );
//                     },
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
