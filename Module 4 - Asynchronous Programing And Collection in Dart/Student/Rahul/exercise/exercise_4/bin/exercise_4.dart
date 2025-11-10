Future<String> fetchData()
 async{
  await Future.delayed(Duration(seconds: 3 ));
  return"Some  Data from the server";
}
void main()
async{
  
  print('program started');
  print('fetching data...');
  String data= await fetchData();
  print('Data recived : $data');
  print('Program ended');
  
}