import 'dart:collection';

void main(List<String>args){
  final queue = Queue<int>();
  print(queue.runtimeType);

  queue.addAll([1,2,3,4,5]);
  queue.addFirst(0);
  queue.addLast(10);
  print(queue);

  queue.removeFirst();
  queue.removeLast();
  print(queue);
}