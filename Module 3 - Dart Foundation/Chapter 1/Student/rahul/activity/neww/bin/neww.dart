import 'dart:math';

void main(List<String> arguments) {

  //if else else if
  int Age=21;
  if(Age>18)
  {
    print("Your an adult");
  }
  else if(Age==18)
  {
    print("now you are adult");
  }
  else
  {
    print("your are an minor");
  }

  //switch

  var color="red";
  switch(color){
    case "red":
    {
      print("reddddd");
    }
    break;
    case "yellow":
    {
      print("yeloijvbbsb");
    }
    break;
    default:
    {
      print("other");
    }
  }

  //for
  print("print 1-10");
  for(int i=1;i<=10;i++)
  {
    print(i);
  }
  //while
  var st=1;
  var ed=10;
  while(st<=ed)
  {
    print(st);
    st=st+1;
  }
  //do while
  var sa=5;
  var en=10;
  do
  {
    print("hii $sa");
    sa=sa+1;
  }
  while(sa<=en);

  //for in
  var number=[10,20,30,40,50];
  for(var num in number)
  {
    print(num);
  }
  print(number);


  //prime or not
  int num=15;
if (ispr(num))
{
print("'$num is prime");
}
else
{
  print('not');
}

  
 
}
 //prime or not

  bool ispr(int num) {
  if (num <= 1) {
    return false; // Numbers less than or equal to 1 are not prime
  }
  // Check for divisibility from 2 up to the square root of the number
  for (int i = 2; i <= sqrt(num); i++) {
    if (num % i == 0) {
      return false; // If divisible by any number in this range, it's not prime
    }
  }
  return true; // If no divisors found, it's a prime number
}








