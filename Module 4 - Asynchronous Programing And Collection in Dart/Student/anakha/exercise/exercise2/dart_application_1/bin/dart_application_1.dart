import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

void main() {
  
  List<int> numbers = [1, 2, 3, 4, 3, 2, 5, 6, 7, 8, 7, 9, 10];

  Set<int> uniqueNumbers = numbers.toSet();

  print('Original List: $numbers');
  print('Unique Numbers (Set): $uniqueNumbers');
}

