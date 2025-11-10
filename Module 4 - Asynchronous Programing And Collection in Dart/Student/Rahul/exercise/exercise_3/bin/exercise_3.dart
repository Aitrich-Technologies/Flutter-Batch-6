void main(){
  var List= [1,2,3,4,5,6,7,8,9,10];
  print('List:$List');
  int sum = List.reduce((a,b)=> a+b);
  print('Sum of elements :$sum');
}