void main(){
  int number=5;
  int fact=1;
  for(int i=1;i<=number;i++)
  {
    fact *= i;
  }
  print('factorial of $number is : $fact');
}