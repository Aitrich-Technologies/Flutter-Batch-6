void main()
{
  A a = A();
  B b = B();
  C c = C();
  D d = D();
  F f = F();
  a.printval(b,c,d,f);
}
class A
{
  void printval(B b,C c,D d,F f)
  {
    print("value from class B: ${b.bstr}");
    print("value from class c: ${c.cstr}");
    print("value from class D: ${d.dstr}");
    print("value from class F: ${f.fstr}");
  }
}
class B
{
  String bstr = 'value from B';
}
class C
{
  String cstr = 'value from C';
}
class D
{
  String dstr = 'value from D';
}
class F
{
  String fstr = 'value from F';
}