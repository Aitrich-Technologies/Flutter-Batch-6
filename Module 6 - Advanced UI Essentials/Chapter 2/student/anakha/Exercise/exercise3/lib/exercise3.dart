import 'package:flutter/material.dart';

class Exercise3 extends StatefulWidget {
  const Exercise3({super.key});

  @override
  State<Exercise3> createState() => _Exercise3State();
}

class _Exercise3State extends State<Exercise3> {
  String selectedGender = 'Male';
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController pincodeController = TextEditingController();

  String? nameError;
  String? phoneNumberError;
  String? pincodeError;

  String? validateUsername(String username) {
    if (username.isEmpty) return "Name is required";
    if (RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9_]').hasMatch(username)) {
      return "Username must not contain special characters or numbers";
    }
    return null;
  }

  String? validatePhoneNumber(String phoneNumber) {
    if (phoneNumber.isEmpty) return "Mobile number is required";
    if (!RegExp(r'^\d{10}$').hasMatch(phoneNumber)) {
      return "Please enter a valid 10-digit mobile number";
    }
    return null;
  }

  String? validatePincode(String pincode) {
    if (pincode.isEmpty) return "Pin code is required";
    if (!RegExp(r'^\d{6}$').hasMatch(pincode)) {
      return "Please enter a valid 6-digit pincode";
    }
    return null;
  }

  void clearAll() {
    setState(() {
      nameController.clear();
      phoneNumberController.clear();
      pincodeController.clear();
      nameError = null;
      phoneNumberError = null;
      pincodeError = null;
      selectedGender = 'Male';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white, 
        title: const Text("Sample interest calculator"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundColor: Colors.blue,
              child: Icon(Icons.person, color: Colors.white, size: 80),
            ),
            const SizedBox(height: 30),
            TextField(
              controller: nameController, 
              decoration: InputDecoration(
                hintText: "Name",
                errorText: nameError,
                border: const OutlineInputBorder(),
              ),
              onChanged: (value) => setState(() => nameError = validateUsername(value)),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: phoneNumberController, 
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "Mobile Number",
                errorText: phoneNumberError,
                border: const OutlineInputBorder(),
              ),
              onChanged: (value) => setState(() => phoneNumberError = validatePhoneNumber(value)),
            ),
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start, 
              children: [
                Expanded(
                  child: TextField(
                    controller: pincodeController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Pincode",
                      errorText: pincodeError,
                      border: const OutlineInputBorder(),
                    ),
                    onChanged: (value) => setState(() => pincodeError = validatePincode(value)),
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: selectedGender,
                    decoration: const InputDecoration(
                      labelText: 'Gender',
                      border: OutlineInputBorder(),
                    ),
                    items: ['Male', 'Female', 'Others']
                        .map((label) => DropdownMenuItem(
                              value: label,
                              child: Text(label),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedGender = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        nameError = validateUsername(nameController.text);
                        phoneNumberError = validatePhoneNumber(phoneNumberController.text);
                        pincodeError = validatePincode(pincodeController.text);
                      });

                      if (nameError == null && phoneNumberError == null && pincodeError == null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Registered Successfully")),
                        );
                      }
                      else{
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please fill all the fields")));
                      }
                    },
                    child: const Text('Register'),
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: ElevatedButton(
                    onPressed: clearAll,
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.grey[300]),
                    child: const Text('Clear all', style: TextStyle(color: Colors.black)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}