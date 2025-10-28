void main()
{
  int num= 121;
  int originalnum=num;
  int reversed=0;
  int reminder;
  while(num>0)
  {
    reminder =num % 10;
    reversed=reversed*10+reminder;
    num=num~/10;
  }
  if (originalnum==reversed)
  {
    print('It s a palindrome number');
  }
  else
  {
    print('It s Not a palindrome number');
  }
}