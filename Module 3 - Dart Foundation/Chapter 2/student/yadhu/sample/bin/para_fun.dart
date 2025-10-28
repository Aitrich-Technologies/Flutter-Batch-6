void main(List<String>agr)
{
  position('username','password');
  position('username');
  print('');
  named(two:'password',one:'username');
  print('');
  defaultt('username');
  defaultt('username',two:'password');
}
void position(String one,[String? two])
{
  print(one);
  print(two);
}
void named({String? one,String? two})
{
  print('parameter one: $one');
  print('parameter two: $two');
}
void defaultt(String one,{String? two = 'heyy'})
{
  print('parameter one: $one');
  print('parameter two: $two');
}