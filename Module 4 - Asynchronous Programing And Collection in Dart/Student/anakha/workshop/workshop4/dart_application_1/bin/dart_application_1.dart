import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

import 'dart:collection';

import 'dart:collection';

void main() {
  
  Queue<int> queue = Queue<int>();
  queue.addAll([10, 20, 30, 40]);

  print("Initial Queue: $queue");

  int firstElement = queue.first;
  int lastElement = queue.last;

  print("First Element: $firstElement");
  print("Last Element: $lastElement");

  queue.removeLast();
  print("Queue after removing last element: $queue");

  queue.clear();
  print("Queue after clearing: $queue");

  print("Is the queue empty? ${queue.isEmpty}");
}

