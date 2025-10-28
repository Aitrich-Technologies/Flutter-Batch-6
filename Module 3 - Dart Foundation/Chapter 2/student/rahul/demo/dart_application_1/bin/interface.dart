void main()
{
  Vehicles().bmw();
  print('');
  Vehicles().suzuki();
  print('');
  Vehicles().hero();
  print('');
  Vehicles().tvs();
}
abstract class car {
  void bmw();
  void suzuki();
} 
abstract class bike{
  void hero();
  void tvs();
} 
class Vehicles implements car,bike{
  Vehicles(){
    print('vehicle........');
  }
  @override
  void  bmw(){
    print('BMW - CAR');
  }

  @override
  void suzuki() {
   print('suzuki - CAR');
  }

  @override
  void hero(){
    print('hero bike');
  }
  @override
  void tvs() {
    print('tvs bike');
  }
}