Future<int> fetchUserAge() async{
  await Future.delayed(Duration(seconds: 3));
  return 55;
}
void main() {
  fetchUserAge().then((age) => print("The user's age is : $age"));
}