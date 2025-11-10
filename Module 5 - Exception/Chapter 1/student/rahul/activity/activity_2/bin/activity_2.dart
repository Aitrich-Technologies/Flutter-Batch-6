import 'dart:io';

void main(){
  
  try{
    {
      
      print("balance:1000 rs");
      stdout.write('deposit:');
      String? x=stdin.readLineSync();
      double depo=double.parse(x!);

      double bela=1000+depo;
      
      print('Deposited $depo.New belance:?$bela');
      stdout.write('withdraw amount:');
      String? y=stdin.readLineSync();
      double withd=double.parse(y!);
      if(bela<withd){
        message();
      }
    }

  }on withdrow catch(e){
    print(e.a);
  }
  finally {
    print('Transation completed,Thank you!');
  }
  
}
void message(){
  throw withdrow('Error: Insufficient balence for withdrawal');
}

class withdrow implements Exception
{
  String a;
  withdrow(this.a);
}