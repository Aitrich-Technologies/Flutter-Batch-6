void main() {
  int n = 5; 
  for (int i = 1; i <= n; i++) {
    String stars = '';
    for (int j = 1; j <= n - i; j++) {
      stars += ' ';
    } 
    for (int k = 1; k <= i; k++) {
      stars += '* ';
    } 
    print(stars);
  }
}
