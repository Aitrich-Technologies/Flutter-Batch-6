void main() {
  int num = 10;
  int a = 0, b = 1;
  print("fibonacci series :");
  for(int i=0; i<num; i++){
    print(a);
    int temp = a + b;
    a = b;
    b =temp;
  }
}