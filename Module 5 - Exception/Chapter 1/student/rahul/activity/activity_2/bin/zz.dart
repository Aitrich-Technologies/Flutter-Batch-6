void main(){
  try{
    {
      print("balance:1000 rs");
      
      double depo=500;
      double bela=1000+depo;
      double withd=5000;
      print('Deposited $depo.New belance:?$bela');
      
      if(bela<withd){
        message();
      }
      else{
        
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