void main()
{
 var obj=cars();
 obj.toyota();
 var obj2=cars.suzuki();
 obj2.bmw();
}
class cars
{
  cars()
  {
    print('bmw,benz,toyota,suzuki,tata');
  }
  void toyota()
  {
    print('Toyota Supra');
  }
  cars.suzuki()
  {
    print('Suzuki cars:Alto K10, Swift,Baleno');
  }
  void bmw()
  {
    print('i7');
  }
}