void main(){
  String x='6';
    int y=3;
    try{
      int xx = int.parse(x);
      var result=xx~/y;
      print(result);
      if(result<5){
        trowExcep();
      }}
    on CustomExcep catch (e){
      print(e.a);
    }
    on FormatException{
      print("format is incorrect");
    }on IntegerDivisionByZeroException{
      print("IntegerDivisionByZeroException occurred!'");
  }
}
void trowExcep(){
  {
  throw CustomExcep('result lessthan 5');
  }
}
class CustomExcep implements Exception{
  String a;
  CustomExcep(this.a);
}