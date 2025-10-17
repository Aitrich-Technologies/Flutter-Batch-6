void main(List <String> arguments)
{
  int num = 15;
  if (num>10)
  {
    if(num%2==0)
    {
      print('$num is greater than 10,it is even number');
    }
    else
    {
      print('$num is greater than 10,it is odd number');
    }
  }
  else if(num<10 && num%2==0)
  {
    print('$num is Less than 10,it is even number');
  }
  else
  {
    print('$num is Less than 10,it is odd number');
  }
}
  
