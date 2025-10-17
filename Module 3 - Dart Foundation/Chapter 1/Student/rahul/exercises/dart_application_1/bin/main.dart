void printpy(int n)
{
  for (int i = 1; i <= n; i++) {
    String star ='';
    for (int j = 1; j <= n - i; j++) {
      star += ' ';
    }
    for (int k = 1; k <= i; k++) {
      star += '* '; 
    }
    print(star);
  }
}
void main()
{
  printpy(5);
} 