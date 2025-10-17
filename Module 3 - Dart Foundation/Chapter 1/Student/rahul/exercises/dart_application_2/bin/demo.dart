import 'dart:io';

void main(List <String> args)
{
  stdout.write('Enter a number: ');
  
  int a=10;
  int b=3;
  var sum=a+b;
  var difference=a-b;
  var product=a*b;
  var quotient=a/b;
  var remainder=a%b;
  print('SUM : $sum');
  print('DIFFERENCE : $difference');
  print('PRODUCT : $product');
  print('Quotient : $quotient');
  print('REMAINDER : $remainder');
}