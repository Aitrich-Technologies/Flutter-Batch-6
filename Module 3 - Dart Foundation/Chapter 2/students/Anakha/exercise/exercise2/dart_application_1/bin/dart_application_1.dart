import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

class A {
  void printValues(B b, C c, D d, F f) {
    print("Value from class B: ${b.bValue}");
    print("Value from class C: ${c.cValue}");
    print("Value from class D: ${d.dValue}");
    print("Value from class F: ${f.fValue}");
  }
}
class B {
  String bValue = "Value from B";
}
class C {
  String cValue = "Value from C";
}
class D {
  String dValue = "Value from D";
}

class F {
  String fValue = "Value from F";
}

void main() {
  A a = A();
  B b = B();
  C c = C();
  D d = D();
  F f = F();

  a.printValues(b, c, d, f);
}

