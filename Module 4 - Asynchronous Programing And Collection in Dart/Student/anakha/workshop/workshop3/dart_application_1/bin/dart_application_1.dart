import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

void main() {
  
  List<String> animals = ['Cat', 'Dog', 'Lion', 'Tiger'];

  print('Original list of animals: $animals');

  animals.remove('Dog');
  print('After removing Dog: $animals');

  animals.add('Cheetah');
  print('After adding Cheetah: $animals');

  bool containsCat = animals.contains('Cat');
  print('Does the list contain Cat? $containsCat');
}

