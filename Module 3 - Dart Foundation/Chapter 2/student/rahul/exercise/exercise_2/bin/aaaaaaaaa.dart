void main() {
  A a = A();
  a.printval();
}

class A with B, C, D, F {
  void printval() {
    print('Value from class B: $bstr');
    print('Value from class C: $cstr');
    print('Value from class D: $dstr');
    print('Value from class F: $fstr');
  }
}

mixin B {
  String bstr = 'value from B';
}

mixin C {
  String cstr = 'value from C';
}

mixin D {
  String dstr = 'value from D';
}

mixin F {
  String fstr = 'value from F';
}


