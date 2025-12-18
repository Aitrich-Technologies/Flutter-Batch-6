void main() {
  PositionedParameters('Parameter 1', 'parameter 2');
  PositionedParameters('Parameter 1');
  print('');
  NamedParameters(two: 'parameter two', one: 'parameter one');
  NamedParameters();
}

void PositionedParameters(String one, [String two = 'Default Value']) {
  print(one);
  print(two);
}

void NamedParameters({String one = 'Parameter One', String two = 'Parameter Two'}) {
  print('Parameter one : $one');
  print('parameter two : $two');
}


