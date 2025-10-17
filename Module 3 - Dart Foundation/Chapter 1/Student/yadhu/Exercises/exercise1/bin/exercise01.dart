void printpy(int n){
  for(int i=1; i<=n; i++){
    String stars = '';
    for(int j=1; j<=n-i; j++){
      stars += ' ';
    }
    for(int k=1; k<=i; k++){
      stars += '* ';
    }
    print(stars);
  }
}
void main(){
  printpy(6);
}