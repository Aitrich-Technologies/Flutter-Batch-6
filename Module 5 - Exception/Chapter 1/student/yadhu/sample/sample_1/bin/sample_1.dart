void main()
{
  try
  {
    throwException();
  }on CustomerException catch(e)
  {
    print(e.cause);
  }
}

void throwException()
{
  throw CustomerException("This is my First custom exception");
}
class CustomerException implements Exception
{
  String cause;
  CustomerException(this.cause);
}