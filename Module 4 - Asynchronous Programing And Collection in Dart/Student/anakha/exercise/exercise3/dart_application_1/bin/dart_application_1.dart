import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

void main() {
  
  List<int> numbers = List.generate(10, (index) => index + 1);

  int sum = numbers.reduce((value, element) => value + element);

  print('Numbers: $numbers');
  print('Sum: $sum');
}
