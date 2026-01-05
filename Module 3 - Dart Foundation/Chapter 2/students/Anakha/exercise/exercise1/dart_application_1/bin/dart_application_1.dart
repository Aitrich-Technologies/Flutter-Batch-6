import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

void main() {
  String text = "madam"; 

  String reversed = text.split('').reversed.join('');

  if (text == reversed) {
    print("$text is a palindrome");
  } else {
    print("$text is not a palindrome");
  }
}

