void main()
{
position('one','two');
position('three');
print('');
Name(two:'password',one: 'username');
print('');
def('para 1');
def('para 3',two: 'para 4');
}
void position(String one, [String? two])
{
  print(one);
  print(two);
}
void Name({String? one,required String two}){
  print('parameter1 $one');
  print('parameter2 $two');
}
void def(String one, {String two ='admin'})
{
  print('parameter1 $one');
  print('parameter2 $two');
}