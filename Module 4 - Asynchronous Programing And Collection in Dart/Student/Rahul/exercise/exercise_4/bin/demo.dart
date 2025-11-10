import 'dart:async';

void main() async {
  print('Program started');

  await fetchData();

  print('Program ended');
}

Future<void> fetchData() async {
  print('Fetching data...');

  try {
    String data = await simulateNetworkRequest();
    print('Data received: $data');
  } catch (e) {
    print('Error: $e');
  }
}

Future<String> simulateNetworkRequest() {
  return Future.delayed(
    Duration(seconds: 2),
    () {
      // You can return data or throw an error to test error handling
      return 'Server response: Data fetched successfully!';
      // Uncomment below line to simulate an error:
      // throw Exception('Network error!');
    },
  );
}
