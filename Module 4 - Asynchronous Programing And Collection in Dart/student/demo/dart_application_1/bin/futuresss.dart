Future<String> Pdata() 
  async{
    await Future.delayed(Duration(seconds: 5));
    return "success";
    
  }
  void main() async{
    print('loading datas...wait 5 sec...');
    String datass=await Pdata();
    print(datass);
    await Future.delayed(Duration(seconds: 3));
    print('done');
    print('$datass');
  }