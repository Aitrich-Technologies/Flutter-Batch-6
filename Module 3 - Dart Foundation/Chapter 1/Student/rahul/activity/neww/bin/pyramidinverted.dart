void main(){
  int n=5;
  for(int i = n;i>=1 ;i--){
    String pyr='';
    for(int j=1;j<= n-i;j++){
      pyr +=' ';
    }
      for(int k=1;k<=i;k++){
      pyr +='* ';
    }
    print(pyr);
  }
}