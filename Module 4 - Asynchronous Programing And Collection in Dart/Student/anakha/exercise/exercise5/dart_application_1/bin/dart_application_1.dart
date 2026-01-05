import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

import 'dart:collection';

void main() {
  
  Queue<int> queue = Queue<int>();

  queue.addAll([10, 20, 30, 40, 50]);

  print("Initial Queue: $queue");

  print("First element: ${queue.first}");
  print("Last element: ${queue.last}");

  while (queue.isNotEmpty) {
    print("Removing: ${queue.removeFirst()}");
  }

  print("Queue after removal: $queue");
}

