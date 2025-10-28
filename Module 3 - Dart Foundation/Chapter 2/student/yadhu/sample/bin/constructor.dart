void main()
{
  var x = car();
  x.function();
  var y  = car.name();
  y.function();
}
class car
{
  car()
  {
    print("BMW");
    print("GTR");
  }
  car.name()
  {
    print("AUDI");
  }
  void function()
  {
    print("SUPRA");
  }
}