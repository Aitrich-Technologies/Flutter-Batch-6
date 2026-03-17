import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:url_launcher/url_launcher.dart';


class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Us"),
        backgroundColor: Colors.deepOrangeAccent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.contact_mail), // Contact icon
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Name',
                      ),
                    ),
                  ),
                ],
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Message',
                ),
                maxLines: 2,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Add functionality to submit form
                },
                child: const Text("Submit"),
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    const Text(
                      "Info",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 50),
                    GestureDetector(
                      onTap: () => _launchEmail('email@example.com'),
                      child: const Icon(Icons.email),
                    ),
                    const SizedBox(height: 50),
                    
                    GestureDetector(
                      onTap: () => _callPhone(),
                      child: const Icon(Icons.phone),
                    ),
                    const SizedBox(height: 50),
                    
                    GestureDetector(
                      onTap: () => _getLocation(),
                      child: const Icon(Icons.location_city),
                    ),
                    const SizedBox(height: 50),
                   
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Function to launch email app
  Future<void> _launchEmail(String email) async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: email,
    );
    if (await canLaunch(emailLaunchUri.toString())) {
      await launch(emailLaunchUri.toString());
    } else {
      throw 'Could not launch $emailLaunchUri';
    }
  }

  // Function to launch phone app

Future<void> _callPhone() async {
  final Uri phoneUri = Uri(scheme: 'tel', path: '+1234567890');

  if (await canLaunchUrl(phoneUri)) {
    await launchUrl(phoneUri);
  }
}



  // Function to launch locate or map app
Future<void> _getLocation() async {
  Location location = Location();

  if (!await location.serviceEnabled() &&
      !await location.requestService()) return;

  if (await location.hasPermission() == PermissionStatus.denied &&
      await location.requestPermission() != PermissionStatus.granted) return;

  LocationData data = await location.getLocation();

  print("Lat: ${data.latitude}, Lng: ${data.longitude}");
}

}