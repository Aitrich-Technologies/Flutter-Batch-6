void main(){
  var numList= [1,2,3,4,3,2,5,6,7,8,7,9,10];
  print('Original List:  $numList');
  //Set<int> uniquelements=numList.toSet();
  Set<int> uniquelements=Set.from(numList);
  print('Unique Elements : $uniquelements');
  
}