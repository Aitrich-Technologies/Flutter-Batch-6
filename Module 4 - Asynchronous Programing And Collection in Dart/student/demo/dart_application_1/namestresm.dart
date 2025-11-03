void main() async{
 List<String> names=['Rahul','Sanjana','Sarang','Sayooj','Sharath'];
 Stream<String> namestream=Stream.fromIterable(names);
 await for(String name in namestream)

 {

print(name);
 }
}