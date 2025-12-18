import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

class MyCustomException implements Exception {
  final String message;
  MyCustomException(this.message);

  @override
  String toString() => 'MyCustomException: $message';
}

void main() {
  try {
   
    throw MyCustomException('This is a custom error message.');
  } catch (e) {
   
    print(e);
  }

  print('Program continues running...');
}

