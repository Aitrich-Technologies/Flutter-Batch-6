Stream<int> counterStream = Stream<int>.periodic(Duration(seconds: 1),(x)=> x);
void main() async{
  await for (int value in counterStream.take(7)){
    print(value);
  }
}