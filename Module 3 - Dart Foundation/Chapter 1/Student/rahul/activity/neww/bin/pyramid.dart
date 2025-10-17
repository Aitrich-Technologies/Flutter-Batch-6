void main(){
  int num=5;
  for(int i=1;i<=num;i++){
    String pyr='';
    for(int j=1;j<= num-i;j++){
      pyr +=' ';
    }
      for(int k=1;k<=i;k++){
      pyr +='* ';
    }
    print(pyr);
  }
  

for(int i=1;i<=num;i++){
    String pyr='';  
      for(int k=1;k<=i;k++){
      pyr +='* ';
    }
    print(pyr);
  }

  
for(int i =1;i<=num;i++){
  String row ='';
  for(int j=1;j<=num-i; j++){
    row += '  ';
  }
  for(int k=1;k<=i;k++){
    row +='* ';
  }
  print(row);
  
}


}
