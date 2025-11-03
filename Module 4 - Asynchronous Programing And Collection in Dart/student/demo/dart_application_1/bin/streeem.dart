Stream<int> pdatas=
Stream<int>.periodic(Duration(seconds: 2),(x)=>x);
void main() async{
  await for( int i in pdatas.take(5))
  {
    print(i);
  }
}