void main()
{
  mobile();
}
abstract class message
{
  void text();
  void number();
}
abstract class call
{
  void missedcall();
  void recievedcall();
}
class mobile implements message,call
{
  mobile()
  {
    print('the mobile must do these functions');
  }
  @override
  void missedcall() {}

  @override
  void number() {}

  @override
  void recievedcall() {}

  @override
  void text() {}
  
}