void main() {
  try {

    throw MyCustomException('This is a custom Exception message ');
    //throw here
  } catch (e) {
    print(e);
  }
}
class MyCustomException implements Exception {
  final String message;

  MyCustomException(this.message);

  @override
  String toString() {
    return 'MyCustomException: $message';
  }
}