
Future<String> fetchName() async{
  await Future.delayed(Duration(seconds: 3));
  return "YADHUUU";
}
void main() async{
  String name = await fetchName();
  print("Welcome to the pet world, $name !");
}