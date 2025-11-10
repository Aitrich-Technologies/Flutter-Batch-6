import 'dart:io';

void main()
{
  try
  {
    stdout.write("Account Balance : 2000");
    print("");
    stdout.write("Deposit Ammount : ");

    var Deposit = stdin.readLineSync();
    var dep = double.parse(Deposit!);

    double Balance = 2000 + dep;
    print("New Balance : $Balance");

    stdout.write("Withdraw Ammount : ");
    var Withdraw = stdin.readLineSync();
    var withdraww = double.parse(Withdraw!);
    
    if(Balance<withdraww)
    {
      throwException();
    }
  }
  on CustomerException catch(e)
  {
    print(e.Account);
  }
  finally{
    print("Transaction Completed , Thank you");
  }
}
void throwException()
{
  throw CustomerException("Error : Insufficient Balance for Withdrawal");
}
class CustomerException implements Exception
{
  String Account;
  CustomerException(this.Account);
}