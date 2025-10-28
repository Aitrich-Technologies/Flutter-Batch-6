void main(){
var obj = Car();
obj.function();

}
class Bike{
  void function()
  {
    
    print('This is from base class');
  }
}
class Car extends Bike{
  void function(){
    super.function();
    print('This is from deriverd class');
  }
}



