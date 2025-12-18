import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

void main(List<String> args) {
  int x = 5;
  int y = 0;

  try {
    int xy = x ~/ y;
    print(xy);
  } on IntegerDivisionByZeroException catch (e) {
    print(e);
  }
}
