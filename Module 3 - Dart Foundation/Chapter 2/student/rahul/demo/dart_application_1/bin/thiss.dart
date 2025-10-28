void main(){
  car('This is a parameter');
}
class car
{
  String str='This is a field';
  car(String str)
  {
    print(this.str);
    print(str);
  }
}