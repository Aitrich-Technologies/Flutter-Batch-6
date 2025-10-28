void main()
{
  Animal cat=Cat();
  Animal dog=Dog();
  cat.breeds();
  dog.breeds();
}
class Animal
{
 void breeds()
 {
  print('animals');
 }
}
class Cat extends Animal
{
 void breeds()
 {
  print('cat: pershian');
 }
}
class Dog extends Animal
{
  void breeds()
 {
  print('dog : beagle');
 }
}