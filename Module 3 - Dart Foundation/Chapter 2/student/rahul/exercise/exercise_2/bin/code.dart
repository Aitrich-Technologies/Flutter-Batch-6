void main(){
 A obj=A();
 obj.funB();
 obj.funC();
 obj.funD();
 obj.funF();
}
mixin B
{
  void funB()
  {
    print("Value form class B");
  }
}
mixin C
{
  void funC()
  {
    print("Value form class C");
  }
}
mixin D
{
  void funD()
  {
    print("Value form class D");
  }
}
mixin F
{
  void funF()
  {
    print("Value form class F");
  }
}
class A with B,C,D,F
{
  
}