void main()
{
  var obj = book();
  obj.Name = "yedhu";
  print(obj.Name);
}
class book
{
  late String name;
  set Name(String s)
  {
    this.name = s;
  }
  String get Name 
  {
    return name;
  }
}