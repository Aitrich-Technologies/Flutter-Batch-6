import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

class ResultLessThanFiveException implements Exception {
  final String message;
  ResultLessThanFiveException(this.message);

  @override
  String toString() => message;
}

void main() {
  
  List<Map<String, dynamic>> testCases = [
    {'x': '123', 'y': 5},
    {'x': 'al', 'y': 6},
    {'x': 5, 'y': 0},
    {'x': 6, 'y': 3},
  ];

  for (var testCase in testCases) {
    try {
      var result = divideValues(testCase['x'], testCase['y']);
      if (result == null) continue;

      print('Result: $result');

      if (result % 2 != 0 && result < 5) {
        throw ResultLessThanFiveException('result is less than 5');
      }
    } on ResultLessThanFiveException catch (e) {
      print(e);
    } catch (e) {
      print('format is incorrect');
    }
  }

  print('Exited.');
}

double? divideValues(dynamic x, dynamic y) {
  try {
  
    double numX;
    if (x is num) {
      numX = x.toDouble();
    } else {
      numX = double.parse(x.toString());
    }

    if (y == 0) {
      throw Exception('Division by zero');
    }

    return numX / y;
  } catch (e) {
    throw Exception('format is incorrect');
  }
}
