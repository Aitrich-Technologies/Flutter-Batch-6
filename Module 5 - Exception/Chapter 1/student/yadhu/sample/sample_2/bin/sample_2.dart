void main()
{
  print("CASE_3:");
  try
  {
    int result = 10 ~/ 0;
    print("The result is $result");
  }catch (e)
  {
    print("The exception throw is $e");
  }finally
  {
    print("This is finally clause");
  }
}