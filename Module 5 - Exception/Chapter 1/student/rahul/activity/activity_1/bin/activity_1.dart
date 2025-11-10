import 'dart:io';

void main(List<String> arguments) {  
  try{
    stdout.write('Enter number 1:');
    String? x=stdin.readLineSync();
    stdout.write('Enter number 2 :');
    String? y=stdin.readLineSync();
      int xx = int.parse(x!);
      int yy = int.parse(y!);
      var result=xx~/yy;
      print(result);
      if(result<5){
        trowExcep();
      }
    }
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