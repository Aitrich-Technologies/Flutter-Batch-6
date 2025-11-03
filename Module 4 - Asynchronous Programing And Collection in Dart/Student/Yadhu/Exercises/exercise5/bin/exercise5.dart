import 'dart:collection';

void main()
{
  Queue<int> myqueue = Queue();
  myqueue.addAll([10,20,30,40,50]);
  print('Initial Queue: $myqueue');

  int first = myqueue.first;
  print('First element of the Queue: $first');

  int last = myqueue.last;
  print('Last element of the Queue: $last');

  int remove1 = myqueue.removeFirst();
  print('Removed element: $remove1');

  int remove2 = myqueue.removeFirst();
  print('Removed element: $remove2');

  int remove3 = myqueue.removeFirst();
  print('Removed element: $remove3');

  int remove4 = myqueue.removeFirst();
  print('Removed element: $remove4');

  int remove5 = myqueue.removeFirst();
  print('Removed element: $remove5');

  print('Queue after removal: $myqueue');
}