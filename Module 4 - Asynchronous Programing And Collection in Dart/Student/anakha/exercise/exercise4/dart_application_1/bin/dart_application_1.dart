import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

Future<void> main() async {
  print("Program started");

  try {
    String data = await fetchData();
    print(data);  
  } catch (e) {
    print("Error: $e");
  }

  print("Program ended");
}

Future<String> fetchData() async {
  print("Fetching data...");
  await Future.delayed(Duration(seconds: 2));

  return "Data received successfully!";
}

