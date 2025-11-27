import 'dart:math';

void main()
{
  int num=2;
  if (prime(num))
  {
    print("$num is prime");
  }
  else
  {
    print('$num not prime number');
  }
}

bool prime(int num)
{
    if (num <= 1)
    {
      return false;
    }
    for (int i = 2; i <= sqrt(num); i++)
    {
      if (num % i == 0)
      {
        return false;
      }
    }
    return true;
}
