import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

void main() {
  String input = 'Empetz'; 

  try {
    int number = int.parse(input);
    print('Parsed number: $number');
  } on FormatException catch (e) {
    print('Caught FormatException: $e');
  } catch (e) {
    print('An unexpected error occurred: $e');
  }

  print('Program continues running...');
}

