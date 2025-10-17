import 'dart:math';

void main(){
int num=9;
if (ispr(num))
{
print("$num is prime");
}
else
{
  print('not prime number');
}
}

bool ispr(int num)
{
if (num <= 1){
  return false;
}
for (int i = 2; i <= sqrt(num); i++) {
    if (num % i == 0) {
      return false;
    }
}
return true;
}
