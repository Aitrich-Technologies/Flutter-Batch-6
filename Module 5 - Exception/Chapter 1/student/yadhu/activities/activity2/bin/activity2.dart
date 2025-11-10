// void main()
// {
//   try
//   {
//     double deposit = 500.0;
//     double balance = 1500.0;
//     double withdraw = 2000.0;
//     if(balance<withdraw)
//     {
//       print("Deposited: $deposit , New Balance: $balance");
//     }
//     throwException();
//     //throw CustomerException("Error: Insufficient balance for withdrawal!");
//   }on CustomerException catch(e)
//   {
//     print(e.Bank);
//   }finally
//   {
//     print("Transaction completed, Thank you!");
//   }
// }
// void throwException()
// {
//   throw CustomerException("Error: Insufficient balance for withdrawal!");
// }
// class CustomerException implements Exception
// {
//   String Bank;
//   CustomerException(this.Bank);
// }





import 'dart:io';
import 'dart:mirrors';

void main()
{
  try
  {
    stdout.write("Deposit ammount: ");
    var deposit = stdin.readLineSync();
    print("Balance: 1500");

    
  }on CustomerException catch(e)
  {
    print(e);
  }
}
class CustomerException implements Exception
{
  String Bank;
  CustomerException(this.Bank);
}