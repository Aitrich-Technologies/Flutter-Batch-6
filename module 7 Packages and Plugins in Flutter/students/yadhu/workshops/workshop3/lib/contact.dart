import 'package:flutter/material.dart';
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
                      onTap: () => _launchphone('9526932410'),
                      child: const Icon(Icons.phone),
                    ),
                    const SizedBox(height: 50),
                    GestureDetector(
                      onTap: () => openMap(37.759392, -122.5107336),
                      child: const Icon(Icons.map),
                    ),
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
  Future<void> _launchphone(String phone) async {
    final Uri phoneLaunchUri = Uri(scheme: 'tel', path: phone);
    if (await canLaunch(phoneLaunchUri.toString())) {
      await launch(phoneLaunchUri.toString());
    } else {
      throw 'Could not launch $phoneLaunchUri';
    }
  }

  // Function to launch locate or map app
  Future<void> openMap(double latitude, double longitude) async {
    // Google Maps URL (works on all platforms, opens app if installed)
    String googleUrl =
        'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';

    // Apple Maps URL (iOS specific)

    // Use the universal link approach with external application mode
    final url = Uri.parse(googleUrl); // Default to Google Maps universal link

    // Note: For finer platform control and custom schemes (like 'comgooglemaps://'),
    // the 'map_launcher' package is easier. The universal HTTPS link works well cross-platform.

    if (await canLaunchUrl(url)) {
      // Use externalApplication mode to prompt opening in a dedicated app, if available.
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }
}
