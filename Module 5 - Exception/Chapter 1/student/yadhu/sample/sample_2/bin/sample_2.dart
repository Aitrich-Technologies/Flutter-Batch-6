
void main()
{
  print("CASE_2:");
  try
  {
    int result = 10 ~/ 0;
    print("The result is $result");
  }catch (e)
  {
    print("The exception throw is $e");
  }
}