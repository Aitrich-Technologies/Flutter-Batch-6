void main()
{
  List<int> Number = List.generate(10,(index) => index + 1);
  print('List: $Number');

  num sum =Number.reduce((value, element) => value + element);
  print('Sum: $sum');
}