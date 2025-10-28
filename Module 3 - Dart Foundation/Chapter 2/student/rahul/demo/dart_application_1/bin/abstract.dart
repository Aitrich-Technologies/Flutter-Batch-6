void main(){
var x= 20; var y=15;
Ans().val(x, y);
Ans().add(x, y);
Ans().sub(x, y);
}
abstract class Cal{
  void val(int x,int y);

  void add(int x,int y){
    print('add: ${x+y}');
  }
  void sub(int x,int y){
    print('sub: ${x-y}');
  }
}
class Ans extends Cal{
  @override
  void val(int x,int y){
    print('number1: $x , number2: $y');
  }
}