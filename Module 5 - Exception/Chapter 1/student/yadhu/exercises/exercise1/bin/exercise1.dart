
void main(List<String>args)
{
  String x = '6';
  int y = 3;
  try
  {
    int xy = int.parse(x);
    var z = xy ~/ y;
    print(z);
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