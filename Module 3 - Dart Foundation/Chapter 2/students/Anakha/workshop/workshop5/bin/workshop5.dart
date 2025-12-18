class Car{
  void driving(){
    print("driving car A");
    print('driving car B');
  }
}

class Honda extends Car{

  @override 
 void driving(){
   
   super.driving();
 }
}

void main(){
  Honda carA = new Honda() ;
  carA.driving();
  
} 