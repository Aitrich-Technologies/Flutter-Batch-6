// ignore_for_file: non_constant_identifier_names

Future<String> fetchData() async{
  await Future.delayed(Duration(seconds: 2));
  return "Some data from the server";
}

void main() async{
  print('Program started');
  print('Fetching data.....');
  String Data = await fetchData();
  print('Data recieved: $Data');
  print('Program ended');
}