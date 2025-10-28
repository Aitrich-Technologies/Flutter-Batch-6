void main(){
 
 A a = A();
 a.printval();
 
}
mixin B
{
  String bstr= 'value from B';
}
mixin C
{
  String cstr= 'value from B';
}
mixin D
{
  String dstr= 'value from B';
}
mixin F
{
  String fstr= 'value from B';
}
class A with B , C , D , F
{
  void printval()
    {
      print('Value form class B: $bstr');
      print('Value form class C: $cstr');
      print('Value form class D: $dstr');
      print('Value form class F: $fstr');
    }
}