void main()
{
  book("This is a parameter");
}
// ignore: camel_case_types
class book
{
  String str = "This is a field";
  book(String str)
  {
    print(this.str);;
    print(str);
  }
}