void main(List<String> arguments) {
  int num = 2;

  switch (num % 2) {
    case 0:
      if (num > 10) {
        print('$num is greater than 10, it is even number');
      } else {
        print('$num is less than 10, it is even number');
      }
      break;

    case 1:
      if (num > 10) {
        print('$num is greater than 10, it is odd number');
      } else {
        print('$num is less than 10, it is odd number');
      }
      break;

    default:
      print('Invalid number');
  }
}
