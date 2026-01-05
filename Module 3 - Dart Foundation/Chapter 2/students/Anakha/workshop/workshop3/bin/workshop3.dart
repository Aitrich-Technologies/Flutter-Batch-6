void main()
{
  function1();
  print(function1());
  print(function2());
  function3('This is from main function');
  }

  String function1()
  {
    return 'This is Just a function';
  }

  String function2()
  {
    return 'This is returned string';
  }

  void function3(String str)
  {
    print(str);
  }