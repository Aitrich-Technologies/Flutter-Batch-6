Future<String> fetchName() async {
  // Simulate waiting for a network request
  await Future.delayed(Duration(seconds: 3));
  return 'John Doe';
}

void main() async {
  print('Program started');
  String name = await fetchName(); // Wait 3 seconds
  print('Welcome to the Pet World, $name!'); // Prints after 3 seconds
  print('Program ended');
}
