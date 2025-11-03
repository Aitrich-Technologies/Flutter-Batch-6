// A function that simulates fetching data from a server
Future<String> fetchData() async {
  print('Fetching data...');

  // Simulate network delay using Future.delayed
  await Future.delayed(Duration(seconds: 3));

  // Return a value after delay
  return 'Data fetched successfully!';
}

// Main function
void main() async {
  print('Start of program');

  // Await pauses here until fetchData() completes
  String result = await fetchData();

  print(result);
  print('End of program');
}
