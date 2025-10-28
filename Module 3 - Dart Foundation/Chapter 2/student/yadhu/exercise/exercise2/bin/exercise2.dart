void main()
{
  var a = A();
  a.b();
  a.c();
  a.d();
  a.f();
}
mixin B
{
  void b()
  {
    print('value from class B : Value from B');
  }
}
mixin C
{
  void c()
  {
    print('value from class C : Value from C');
  }
}
mixin D
{
  void d()
  {
    print('value from class D : value from D');
  }
}
class A with B,C,D
{
  void f()
  {
    print('value from class F : value from F');
  }
}