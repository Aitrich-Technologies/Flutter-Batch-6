void main()
{
  var obj = name();
  print('Calling a field from mian method ----- ${obj.str}');
  obj.print_str();
}
class name
{
  String str = 'Yadhu';
  void print_str()
  {
    print('Executing a function from initialised class ----- $str');
  }
}