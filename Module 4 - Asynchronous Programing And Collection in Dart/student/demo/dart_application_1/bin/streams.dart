Stream<int> counterStream = 
    Stream<int>.periodic(
      Duration(seconds: 1), (x) => x);

void main() async {
  await for (int i in counterStream.take(5)) {
    print(i);
  }
}
