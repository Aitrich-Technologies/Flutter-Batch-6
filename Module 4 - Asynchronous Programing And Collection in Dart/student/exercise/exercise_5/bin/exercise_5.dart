import 'dart:collection';

void main(){
  final queue =Queue<int>();
  //print(queue.runtimeType); 
  queue.addAll([10,20,30,40,50]);
  print('Initial Queue :$queue');
  
  int firstqueue =queue.first;
  print('First element of the Queue :$firstqueue');
  
  print('Last element of the Queue :${queue.last}');

  int remove1 = queue.removeFirst();
  print('Removed element :$remove1');

  int remove2 = queue.removeFirst();
  print('Removed element :$remove2');

  int remove3 = queue.removeFirst();
  print('Removed element :$remove3');

  int remove4 = queue.removeFirst();
  print('Removed element :$remove4');
  
  int remove5 = queue.removeFirst();
  print('Removed element :$remove5');
  
  print('Queue After Removal :$queue');
}