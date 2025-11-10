import 'dart:io';

void main()
{
  try
  {
    stdout.write('Enter first Number:');
    var x = stdin.readLineSync();
    //print(x);
    stdout.write("Enter Second number:");
    var y = stdin.readLineSync();
    
    int xy = int.parse(x!);
    int yx = int.parse(y!);
    var z = xy ~/ yx;
    print("result: $z");
    if (z<5)
    {
      throwException();
    }
  }on IntegerDivisionByZeroException{
    print('IntegerDivisionByZeroException');

  }on FormatException{
    print('Format is incorrect');

  }on CustomerException catch(e)
  {
    print(e.a);

  }
}
void throwException()
{
  throw CustomerException("result is lessthan 5");
}
class CustomerException implements Exception
{
  String a;
  CustomerException(this.a);
}
