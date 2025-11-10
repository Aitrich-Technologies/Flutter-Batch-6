void main()
{
   var obj1=exception();
   obj1.str();
   obj1.str2();
   obj1.idbzero();
   obj1.cal();
}
class exception
{

  void str(){
    String x='123';
    int y=5;
    int xy = int.parse(x);
    //print(xy);
    var div=xy~/y;
    print(div);
  }
  void str2()
  {
    String x='ai';
    int y=6;
    try{
    int xy = int.parse(x);
    var div=xy~/y;
    //print(div);
    }catch (e){
      print(e);
    }
  }
  void format()
  {
  }

  void idbzero()
  {
    try{
      int x=5;
      int y=0;
      int xy=x~/y;
      print(xy);

    }on IntegerDivisionByZeroException{
      print('Integer Division By Zero');
    }
  }

  void cal()
  {
    var x= 6;
    var y= 3;
    var xy=x~/y;
    print('result :$xy');
  }
}