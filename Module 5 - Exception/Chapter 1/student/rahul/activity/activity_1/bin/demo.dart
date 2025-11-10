import 'dart:io';

void main() {
  // Prompt the user to enter the first number
  stdout.write('Enter the first number: ');
  String? input1 = stdin.readLineSync(); // Read input as a string

  // Prompt the user to enter the second number
  stdout.write('Enter the second number: ');
  String? input2 = stdin.readLineSync(); // Read input as a string

  // Parse the input strings to numbers (double for potential decimal values)
  try {
    double num1 = double.parse(input1!);
    double num2 = double.parse(input2!);

    // Check for division by zero
    if (num2 == 0) {
      print('Error: Division by zero is not allowed.');
    } else {
      // Calculate the division
      double result = num1 / num2;

      // Print the result
      print('The result of $num1 divided by $num2 is: $result');
    }
  } catch (e) {
    // Handle invalid input (e.g., non-numeric input)
    print('Error: Invalid input. Please enter valid numbers.');
  }
}