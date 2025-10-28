void main(){
   var obj =car();
   obj.Name = 'shift';
   print(obj.Name);
}
class car{
  late String suzuki;

  set Name(String s){

    this.suzuki = s;

  }
  String get Name{
    
    return suzuki;
  }
}