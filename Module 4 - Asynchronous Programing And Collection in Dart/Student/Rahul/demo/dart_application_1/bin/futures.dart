Future<String> fetchUserName() async {
  await Future.delayed(Duration(seconds: 2));
  return 'John';
}

void main() async {
  print('hii');
  print(await fetchUserName());
}
