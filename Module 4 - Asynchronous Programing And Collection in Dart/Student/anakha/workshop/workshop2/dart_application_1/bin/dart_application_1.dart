import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

void main() {
  
  Set<int> set1 = {1, 2, 3, 4, 5};
  Set<int> set2 = {3, 4, 5, 6, 7};

  Set<int> unionSet = set1.union(set2);

  Set<int> intersectionSet = set1.intersection(set2);

  Set<int> differenceSet1 = set1.difference(set2); 
  Set<int> differenceSet2 = set2.difference(set1); 

  print('Set 1: $set1');
  print('Set 2: $set2');
  print('Union: $unionSet');
  print('Intersection: $intersectionSet');
  print('Difference (Set1 - Set2): $differenceSet1');
  print('Difference (Set2 - Set1): $differenceSet2');
}

